// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCYwk-pTa1lRS5PU2Wu1QrUsKKciCA0nM4',
    appId: '1:862468817137:web:38c34f3760ac585017e950',
    messagingSenderId: '862468817137',
    projectId: 'friendslide',
    authDomain: 'friendslide.firebaseapp.com',
    storageBucket: 'friendslide.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDV_FgfvoKi-n0xgDTdNHoNvu_IoHoxH3A',
    appId: '1:862468817137:android:ad40d411154a06e417e950',
    messagingSenderId: '862468817137',
    projectId: 'friendslide',
    storageBucket: 'friendslide.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAjiG_Hs4ld31yEJAcirxfWxXhCMzplZGM',
    appId: '1:862468817137:ios:85b505976c11164717e950',
    messagingSenderId: '862468817137',
    projectId: 'friendslide',
    storageBucket: 'friendslide.appspot.com',
    iosClientId: '862468817137-tqoaasepp0ol57qk0ul2jra4aa1jpos6.apps.googleusercontent.com',
    iosBundleId: 'co.enspyr.friendslide',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAjiG_Hs4ld31yEJAcirxfWxXhCMzplZGM',
    appId: '1:862468817137:ios:85b505976c11164717e950',
    messagingSenderId: '862468817137',
    projectId: 'friendslide',
    storageBucket: 'friendslide.appspot.com',
    iosClientId: '862468817137-tqoaasepp0ol57qk0ul2jra4aa1jpos6.apps.googleusercontent.com',
    iosBundleId: 'co.enspyr.friendslide',
  );
}
