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
        return macos;
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
    apiKey: 'AIzaSyCY57BabO7ArdD_YG4oZTodL8QygNvyePw',
    appId: '1:813139674848:web:8206512b1f428726b67285',
    messagingSenderId: '813139674848',
    projectId: 'househuddle-1de57',
    authDomain: 'househuddle-1de57.firebaseapp.com',
    storageBucket: 'househuddle-1de57.appspot.com',
    measurementId: 'G-70B5ZL7CCE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBCqJHJc55osdXWB0AteYUJr_cufD3ruHE',
    appId: '1:813139674848:android:c859d9c59ac33637b67285',
    messagingSenderId: '813139674848',
    projectId: 'househuddle-1de57',
    storageBucket: 'househuddle-1de57.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB4nyLR2UXQfrznNzFQC1QYtwVp47xLBms',
    appId: '1:813139674848:ios:9cc120ed27a53637b67285',
    messagingSenderId: '813139674848',
    projectId: 'househuddle-1de57',
    storageBucket: 'househuddle-1de57.appspot.com',
    iosBundleId: 'com.example.houseHuddle',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB4nyLR2UXQfrznNzFQC1QYtwVp47xLBms',
    appId: '1:813139674848:ios:b82d8d40aeae9d85b67285',
    messagingSenderId: '813139674848',
    projectId: 'househuddle-1de57',
    storageBucket: 'househuddle-1de57.appspot.com',
    iosBundleId: 'com.example.houseHuddle.RunnerTests',
  );
}
