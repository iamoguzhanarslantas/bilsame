import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthRepository {
  User? getCurrentUser();
  String? getUserProfileId();
  Future<void> signIn(String username, String password);
  Future<void> signInByGoogle();
  Future<void> signOut();
}
