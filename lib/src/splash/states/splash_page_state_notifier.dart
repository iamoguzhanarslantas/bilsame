import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bilsame/firebase_options.dart' show DefaultFirebaseOptions;
import 'package:bilsame/src/common/common.dart' show logger;
import 'package:bilsame/src/splash/splash.dart' show SplashPageState;

class SplashPageStateNotifier extends StateNotifier<SplashPageState> {
  final Ref ref;
  SplashPageStateNotifier({required this.ref}) : super(SplashPageState.init());
  Future<void> initializeApp() async {
    try {
      logger.i('initializeApp');
      state = SplashPageState.init();
      await Firebase.initializeApp(
        name: 'Bilsame',
        options: DefaultFirebaseOptions.currentPlatform,
      );

      state = state.copyWith(appInitialized: true);
    } catch (e) {
      logger.e(e);
    }
  }
}
