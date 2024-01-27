// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    apiKey: 'AIzaSyCeMSsERhLtrUuzKsebf6R3q5tHgDFGFzY',
    appId: '1:514391810672:web:d9dfe550da92d2902a0ab5',
    messagingSenderId: '514391810672',
    projectId: 'ngo-index',
    authDomain: 'ngo-index.firebaseapp.com',
    storageBucket: 'ngo-index.appspot.com',
    measurementId: 'G-TGVMJEP68T',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAs00uMnKtP8Xl1umBjrZYgTWumq9sa8-c',
    appId: '1:514391810672:android:ca0c5e1d74bc4f652a0ab5',
    messagingSenderId: '514391810672',
    projectId: 'ngo-index',
    storageBucket: 'ngo-index.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAyTu1ykGLP_R19R5bkKeFFZiwe8nB00ig',
    appId: '1:514391810672:ios:b9d281b656ffb1d22a0ab5',
    messagingSenderId: '514391810672',
    projectId: 'ngo-index',
    storageBucket: 'ngo-index.appspot.com',
    iosBundleId: 'com.example.ngoIndex',
  );
}