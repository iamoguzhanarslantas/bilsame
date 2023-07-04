import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:bilsame/src/login/login.dart' show IAuthRepository;

class AuthRepository extends IAuthRepository {
  AuthRepository(this.ref);

  final ProviderRef ref;

  @override
  User? getCurrentUser() {
    return FirebaseAuth.instance.currentUser;
  }

  @override
  Future<void> signOut() async {
    FirebaseAuth.instance.signOut();
  }

  @override
  String? getUserProfileId() {
    return FirebaseAuth.instance.currentUser?.uid;
  }

  @override
  Future<void> signIn(String username, String password) {
    throw UnimplementedError();
  }

  @override
  Future<void> signInByGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    if (googleUser != null) {
      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Once signed in, return the UserCredential

      await FirebaseAuth.instance.signInWithCredential(credential);
    }
  }
}
