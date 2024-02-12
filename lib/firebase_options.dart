// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform, kIsWeb;

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
    apiKey: 'AIzaSyDhRkTclFGPssbFElAv9G_bqK7-Zdobv-U',
    appId: '1:990581917721:web:04ef8f9ae24a8a1e0e0288',
    messagingSenderId: '990581917721',
    projectId: 'kotha-barta-a5ca2',
    authDomain: 'kotha-barta-a5ca2.firebaseapp.com',
    storageBucket: 'kotha-barta-a5ca2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyApDqhSUEZamXBuZwTPj2L7fUE0uQS3O-0',
    appId: '1:990581917721:android:faf9a0d1e8eed6770e0288',
    messagingSenderId: '990581917721',
    projectId: 'kotha-barta-a5ca2',
    storageBucket: 'kotha-barta-a5ca2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDOptzE5XHM5F2pqbotinwzMRXPCHESj0w',
    appId: '1:990581917721:ios:43c7fd248326e0ca0e0288',
    messagingSenderId: '990581917721',
    projectId: 'kotha-barta-a5ca2',
    storageBucket: 'kotha-barta-a5ca2.appspot.com',
    iosBundleId: 'com.example.kothaBarta',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDOptzE5XHM5F2pqbotinwzMRXPCHESj0w',
    appId: '1:990581917721:ios:b49354de6a82b9930e0288',
    messagingSenderId: '990581917721',
    projectId: 'kotha-barta-a5ca2',
    storageBucket: 'kotha-barta-a5ca2.appspot.com',
    iosBundleId: 'com.example.kothaBarta.RunnerTests',
  );
}