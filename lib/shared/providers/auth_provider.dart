import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/services/api_service.dart';
import '../../data/services/auth_service.dart';

// Holds the current user ID (null = logged out)
class AuthNotifier extends StateNotifier<AsyncValue<String?>> {
  AuthNotifier() : super(const AsyncValue.loading()) {
    _init();
  }

  Future<void> _init() async {
    final userId = await ApiService.getCurrentUserId();
    state = AsyncValue.data(userId);
  }

  Future<void> signUpWithEmail({
    required String email,
    required String password,
    required String username,
  }) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final data = await AuthService.signUpWithEmail(
        email: email,
        password: password,
        username: username,
      );
      return (data['user'] as Map<String, dynamic>)['id'] as String;
    });
  }

  Future<void> signInWithEmail({
    required String email,
    required String password,
  }) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final data = await AuthService.signInWithEmail(
          email: email, password: password);
      return (data['user'] as Map<String, dynamic>)['id'] as String;
    });
  }

  Future<void> signOut() async {
    await AuthService.signOut();
    state = const AsyncValue.data(null);
  }
}

final authNotifierProvider =
    StateNotifierProvider<AuthNotifier, AsyncValue<String?>>((ref) {
  return AuthNotifier();
});
