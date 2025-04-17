// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD3sHm5Rvew3ks71MpmNHO0YiTn3F3zv6s',
    appId: '1:842335524222:web:4c8eaf0bb5690a7ae6cf2f',
    messagingSenderId: '842335524222',
    projectId: 'chat-app-8112e',
    authDomain: 'chat-app-8112e.firebaseapp.com',
    storageBucket: 'chat-app-8112e.firebasestorage.app',
    measurementId: 'G-356HEZKKQ9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBUxfte5zn-qaEraXJagRzGO6RKLbng71E',
    appId: '1:842335524222:android:591f28344a06a152e6cf2f',
    messagingSenderId: '842335524222',
    projectId: 'chat-app-8112e',
    storageBucket: 'chat-app-8112e.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBDZ1weWfxejmXXIYSrz9YLIGrnvRTRVG8',
    appId: '1:842335524222:ios:c2fc2f40124882b3e6cf2f',
    messagingSenderId: '842335524222',
    projectId: 'chat-app-8112e',
    storageBucket: 'chat-app-8112e.firebasestorage.app',
    iosBundleId: 'com.example.chatapp',
  );
}
