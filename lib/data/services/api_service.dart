import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../core/constants/app_constants.dart';

class ApiService {
  ApiService._();

  static const _storage = FlutterSecureStorage();
  static const _accessKey = 'access_token';
  static const _refreshKey = 'refresh_token';
  static const _userIdKey = 'user_id';

  static final Dio _dio = Dio(BaseOptions(
    baseUrl: AppConstants.apiBaseUrl,
    connectTimeout: const Duration(seconds: 15),
    receiveTimeout: const Duration(seconds: 15),
    headers: {'Content-Type': 'application/json'},
  ))
    ..interceptors.add(_AuthInterceptor());

  static Dio get client => _dio;

  // ── Token management ──────────────────────────────────────────────────────

  static Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
    required String userId,
  }) async {
    await Future.wait([
      _storage.write(key: _accessKey, value: accessToken),
      _storage.write(key: _refreshKey, value: refreshToken),
      _storage.write(key: _userIdKey, value: userId),
    ]);
  }

  static Future<void> clearTokens() async {
    await Future.wait([
      _storage.delete(key: _accessKey),
      _storage.delete(key: _refreshKey),
      _storage.delete(key: _userIdKey),
    ]);
  }

  static Future<String?> getAccessToken() => _storage.read(key: _accessKey);
  static Future<String?> getRefreshToken() => _storage.read(key: _refreshKey);
  static Future<String?> getCurrentUserId() => _storage.read(key: _userIdKey);

  static Future<bool> get isAuthenticated async =>
      (await getAccessToken()) != null;
}

// Injects Bearer token and handles 401 → refresh flow.
class _AuthInterceptor extends Interceptor {
  bool _isRefreshing = false;

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await ApiService.getAccessToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401 && !_isRefreshing) {
      _isRefreshing = true;
      try {
        final userId = await ApiService.getCurrentUserId();
        final refreshToken = await ApiService.getRefreshToken();
        if (userId != null && refreshToken != null) {
          final res = await ApiService.client.post(
            '/auth/refresh',
            data: {'userId': userId},
            options: Options(headers: {'Authorization': 'Bearer $refreshToken'}),
          );
          final newToken = res.data['accessToken'] as String;
          await ApiService._storage.write(
              key: ApiService._accessKey, value: newToken);

          // Retry original request with new token
          final opts = err.requestOptions
            ..headers['Authorization'] = 'Bearer $newToken';
          final response = await ApiService.client.fetch(opts);
          handler.resolve(response);
          return;
        }
      } catch (_) {
        await ApiService.clearTokens();
      } finally {
        _isRefreshing = false;
      }
    }
    handler.next(err);
  }
}
