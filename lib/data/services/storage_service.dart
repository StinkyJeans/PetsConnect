import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path/path.dart' as p;

import '../../core/constants/app_constants.dart';
import 'api_service.dart';

class StorageService {
  StorageService._();

  /// Upload a single file to NestJS /upload/single. Returns the public S3 URL.
  static Future<String> uploadFile({
    required String folder,
    required File file,
    bool compress = true,
  }) async {
    final ext = p.extension(file.path).toLowerCase();
    final isImage = ['.jpg', '.jpeg', '.png', '.webp'].contains(ext);

    final Uint8List bytes = (compress && isImage)
        ? Uint8List.fromList(await _compressImage(file))
        : await file.readAsBytes();

    final formData = FormData.fromMap({
      'file': MultipartFile.fromBytes(
        bytes,
        filename: p.basename(file.path),
        contentType: DioMediaType.parse(_mimeType(ext)),
      ),
    });

    final res = await ApiService.client.post(
      '/upload/single',
      data: formData,
      queryParameters: {'folder': folder},
      options: Options(contentType: 'multipart/form-data'),
    );
    return res.data['url'] as String;
  }

  /// Upload multiple files. Returns list of public S3 URLs.
  static Future<List<String>> uploadMultiple({
    required String folder,
    required List<File> files,
    bool compress = true,
  }) async {
    final parts = <MapEntry<String, MultipartFile>>[];
    for (final file in files) {
      final ext = p.extension(file.path).toLowerCase();
      final isImage = ['.jpg', '.jpeg', '.png', '.webp'].contains(ext);
      final bytes = (compress && isImage)
          ? Uint8List.fromList(await _compressImage(file))
          : await file.readAsBytes();
      parts.add(MapEntry(
        'files',
        MultipartFile.fromBytes(
          bytes,
          filename: p.basename(file.path),
          contentType: DioMediaType.parse(_mimeType(ext)),
        ),
      ));
    }

    final formData = FormData()..files.addAll(parts);
    final res = await ApiService.client.post(
      '/upload/multiple',
      data: formData,
      queryParameters: {'folder': folder},
      options: Options(contentType: 'multipart/form-data'),
    );
    return List<String>.from(res.data['urls'] as List);
  }

  // ── Convenience wrappers ─────────────────────────────────────────────────

  static Future<String> uploadAvatar(String userId, File file) =>
      uploadFile(folder: '${AppConstants.folderAvatars}/$userId', file: file);

  static Future<String> uploadPostMedia(String userId, File file) =>
      uploadFile(folder: '${AppConstants.folderPostMedia}/$userId', file: file);

  static Future<List<String>> uploadPostImages(String userId, List<File> files) =>
      uploadMultiple(folder: '${AppConstants.folderPostMedia}/$userId', files: files);

  static Future<List<String>> uploadListingImages(String userId, List<File> files) =>
      uploadMultiple(folder: '${AppConstants.folderListingImages}/$userId', files: files);

  static Future<List<String>> uploadAdoptionImages(String userId, List<File> files) =>
      uploadMultiple(folder: '${AppConstants.folderAdoptionImages}/$userId', files: files);

  static Future<List<String>> uploadRescueImages(String userId, List<File> files) =>
      uploadMultiple(folder: '${AppConstants.folderRescueImages}/$userId', files: files);

  // ── Helpers ───────────────────────────────────────────────────────────────

  static Future<List<int>> _compressImage(File file) async {
    final result = await FlutterImageCompress.compressWithFile(
      file.path,
      quality: 80,
      minWidth: 1080,
      minHeight: 1080,
    );
    return result ?? await file.readAsBytes();
  }

  static String _mimeType(String ext) {
    switch (ext) {
      case '.jpg':
      case '.jpeg':
        return 'image/jpeg';
      case '.png':
        return 'image/png';
      case '.webp':
        return 'image/webp';
      case '.mp4':
        return 'video/mp4';
      case '.mov':
        return 'video/quicktime';
      default:
        return 'application/octet-stream';
    }
  }
}
