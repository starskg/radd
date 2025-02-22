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
    apiKey: 'AIzaSyA1ImosV6vnaH0CUMt0VFcvTigPfYbIFUg',
    appId: '1:674434519179:web:2d1f78aba4ea3a0ffdc48e',
    messagingSenderId: '674434519179',
    projectId: 'radio-2d111',
    authDomain: 'radio-2d111.firebaseapp.com',
    storageBucket: 'radio-2d111.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCVtW3j58VHk5pW4Czz7oZwe9IQqTUHfLQ',
    appId: '1:674434519179:android:d8283158c75d4f84fdc48e',
    messagingSenderId: '674434519179',
    projectId: 'radio-2d111',
    storageBucket: 'radio-2d111.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD20Snysx6MtkakKz2hVan_4UIr9Q2I_ZA',
    appId: '1:674434519179:ios:dec468c06daa976dfdc48e',
    messagingSenderId: '674434519179',
    projectId: 'radio-2d111',
    storageBucket: 'radio-2d111.appspot.com',
    iosBundleId: 'com.example.myRadioApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD20Snysx6MtkakKz2hVan_4UIr9Q2I_ZA',
    appId: '1:674434519179:ios:6afb5a46eac9011cfdc48e',
    messagingSenderId: '674434519179',
    projectId: 'radio-2d111',
    storageBucket: 'radio-2d111.appspot.com',
    iosBundleId: 'com.example.myRadioApp.RunnerTests',
  );
}
