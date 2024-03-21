// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyBy2fH6oNkbVTKnqKBUvXp4Wba221H3FSM',
    appId: '1:152575014517:web:7eda1dd02a1d70b64eaa3c',
    messagingSenderId: '152575014517',
    projectId: 'tutorialapplication-3ec17',
    authDomain: 'tutorialapplication-3ec17.firebaseapp.com',
    storageBucket: 'tutorialapplication-3ec17.appspot.com',
    measurementId: 'G-RR5D2BNGB0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAsy8uYlHj-JaVFXOZleo-gwHP4LOz-FqU',
    appId: '1:152575014517:android:341538e3b581f94c4eaa3c',
    messagingSenderId: '152575014517',
    projectId: 'tutorialapplication-3ec17',
    storageBucket: 'tutorialapplication-3ec17.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBys2spcuW5wjcU4uTnbvsZOWoTdIeKRjk',
    appId: '1:152575014517:ios:d4c9a6ad4961a32e4eaa3c',
    messagingSenderId: '152575014517',
    projectId: 'tutorialapplication-3ec17',
    storageBucket: 'tutorialapplication-3ec17.appspot.com',
    iosBundleId: 'com.example.applicationtutorial',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBys2spcuW5wjcU4uTnbvsZOWoTdIeKRjk',
    appId: '1:152575014517:ios:9f562574fa227b924eaa3c',
    messagingSenderId: '152575014517',
    projectId: 'tutorialapplication-3ec17',
    storageBucket: 'tutorialapplication-3ec17.appspot.com',
    iosBundleId: 'com.example.applicationtutorial.RunnerTests',
  );
}
