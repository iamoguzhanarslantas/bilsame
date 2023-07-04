import 'package:firebase_auth/firebase_auth.dart';

abstract class IUserRepository {
  Future<void> saveUser(User user);
  Future<void> readUser(User user);
  Future<void> updateUser(User user);
  Future<void> deleteUser(User user);
}
