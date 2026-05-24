import 'package:dio/dio.dart';

import '../../core/errors/app_exception.dart';
import 'api_service.dart';

class AuthService {
  AuthService._();

  static Future<Map<String, dynamic>> signUpWithEmail({
    required String email,
    required String password,
    required String username,
  }) async {
    try {
      final res = await ApiService.client.post('/auth/register', data: {
        'email': email,
        'password': password,
        'username': username,
      });
      final data = res.data as Map<String, dynamic>;
      await ApiService.saveTokens(
        accessToken: data['accessToken'] as String,
        refreshToken: data['refreshToken'] as String,
        userId: (data['user'] as Map<String, dynamic>)['id'] as String,
      );
      return data;
    } on DioException catch (e) {
      throw AppException(_extractMessage(e));
    }
  }

  static Future<Map<String, dynamic>> signInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final res = await ApiService.client.post('/auth/login', data: {
        'email': email,
        'password': password,
      });
      final data = res.data as Map<String, dynamic>;
      await ApiService.saveTokens(
        accessToken: data['accessToken'] as String,
        refreshToken: data['refreshToken'] as String,
        userId: (data['user'] as Map<String, dynamic>)['id'] as String,
      );
      return data;
    } on DioException catch (e) {
      throw AppException(_extractMessage(e));
    }
  }

  static Future<void> signOut() async {
    await ApiService.clearTokens();
  }

  static String _extractMessage(DioException e) {
    final data = e.response?.data;
    if (data is Map && data['message'] != null) {
      final msg = data['message'];
      if (msg is List) return msg.first.toString();
      return msg.toString();
    }
    return e.message ?? 'An error occurred';
  }
}
