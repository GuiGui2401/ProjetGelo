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
    apiKey: 'AIzaSyBCcD8zviH4IwT-ISd27L-AIfL6JzHK3KE',
    appId: '1:261428779915:web:310d4960b8221959096d8e',
    messagingSenderId: '261428779915',
    projectId: 'bloodbanksystem-6bfaa',
    authDomain: 'bloodbanksystem-6bfaa.firebaseapp.com',
    storageBucket: 'bloodbanksystem-6bfaa.appspot.com',
    measurementId: 'G-ZYF57NE4FC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA6XvvCKTLGOBw0BN6tth5wqiNWIwpITto',
    appId: '1:261428779915:android:84e82a8a6a643186096d8e',
    messagingSenderId: '261428779915',
    projectId: 'bloodbanksystem-6bfaa',
    storageBucket: 'bloodbanksystem-6bfaa.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC8RDSBXVBIyHTdTabHAj2M8pkIM8UOBU8',
    appId: '1:261428779915:ios:92b509646b5d3b12096d8e',
    messagingSenderId: '261428779915',
    projectId: 'bloodbanksystem-6bfaa',
    storageBucket: 'bloodbanksystem-6bfaa.appspot.com',
    iosBundleId: 'com.example.projetgelo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC8RDSBXVBIyHTdTabHAj2M8pkIM8UOBU8',
    appId: '1:261428779915:ios:92b509646b5d3b12096d8e',
    messagingSenderId: '261428779915',
    projectId: 'bloodbanksystem-6bfaa',
    storageBucket: 'bloodbanksystem-6bfaa.appspot.com',
    iosBundleId: 'com.example.projetgelo',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBCcD8zviH4IwT-ISd27L-AIfL6JzHK3KE',
    appId: '1:261428779915:web:76dedab610e7e98d096d8e',
    messagingSenderId: '261428779915',
    projectId: 'bloodbanksystem-6bfaa',
    authDomain: 'bloodbanksystem-6bfaa.firebaseapp.com',
    storageBucket: 'bloodbanksystem-6bfaa.appspot.com',
    measurementId: 'G-MBQFN4EZTV',
  );
}