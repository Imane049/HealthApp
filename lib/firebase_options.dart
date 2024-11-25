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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyAbNcRwixZWGfsyPFg5G5_QKeW50MRf6uQ',
    appId: '1:959561654544:web:4ead0aab420f0080288595',
    messagingSenderId: '959561654544',
    projectId: 'healthtracker-f288f',
    authDomain: 'healthtracker-f288f.firebaseapp.com',
    storageBucket: 'healthtracker-f288f.firebasestorage.app',
    measurementId: 'G-CCT3JZ8PE5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA9HGal8zG8BdCViLmCPf0Amf3UGQgHkv4',
    appId: '1:959561654544:android:8984eb8d21b218ab288595',
    messagingSenderId: '959561654544',
    projectId: 'healthtracker-f288f',
    storageBucket: 'healthtracker-f288f.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC8Px1AeSGLcwHHlkoMR5jOeMGnR6yn3Gs',
    appId: '1:959561654544:ios:08ca75c3bd0e49b3288595',
    messagingSenderId: '959561654544',
    projectId: 'healthtracker-f288f',
    storageBucket: 'healthtracker-f288f.firebasestorage.app',
    iosBundleId: 'com.example.sante',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC8Px1AeSGLcwHHlkoMR5jOeMGnR6yn3Gs',
    appId: '1:959561654544:ios:08ca75c3bd0e49b3288595',
    messagingSenderId: '959561654544',
    projectId: 'healthtracker-f288f',
    storageBucket: 'healthtracker-f288f.firebasestorage.app',
    iosBundleId: 'com.example.sante',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAbNcRwixZWGfsyPFg5G5_QKeW50MRf6uQ',
    appId: '1:959561654544:web:1547282711647510288595',
    messagingSenderId: '959561654544',
    projectId: 'healthtracker-f288f',
    authDomain: 'healthtracker-f288f.firebaseapp.com',
    storageBucket: 'healthtracker-f288f.firebasestorage.app',
    measurementId: 'G-BM5EX38Y50',
  );
}