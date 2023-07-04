import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bilsame/src/splash/splash.dart'
    show SplashPageState, SplashPageStateNotifier;

final firebaseAuthProvider = Provider(
  (ref) => FirebaseAuth.instance.currentUser,
);

final splashPageProvider =
    StateNotifierProvider<SplashPageStateNotifier, SplashPageState>(
  (ref) => SplashPageStateNotifier(ref: ref),
);
