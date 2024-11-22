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
    apiKey: 'AIzaSyBsiGatswPleHJYnJuOiol0ZBInpJ2Q710',
    appId: '1:219552379409:web:519c73bd815f62d46177b0',
    messagingSenderId: '219552379409',
    projectId: 'easyshopping-ea60e',
    authDomain: 'easyshopping-ea60e.firebaseapp.com',
    storageBucket: 'easyshopping-ea60e.firebasestorage.app',
    measurementId: 'G-Y80QHYT7VH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB-M26fTxEXtT2SidFeybzg_WIue8Lw1-k',
    appId: '1:219552379409:android:3c887941ab19d43e6177b0',
    messagingSenderId: '219552379409',
    projectId: 'easyshopping-ea60e',
    storageBucket: 'easyshopping-ea60e.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBhrvskhBOnyajWy-FCivKiyBdWMKhAEOc',
    appId: '1:219552379409:ios:27161bd9d9745c3b6177b0',
    messagingSenderId: '219552379409',
    projectId: 'easyshopping-ea60e',
    storageBucket: 'easyshopping-ea60e.firebasestorage.app',
    iosBundleId: 'com.example.eCommerce',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBhrvskhBOnyajWy-FCivKiyBdWMKhAEOc',
    appId: '1:219552379409:ios:27161bd9d9745c3b6177b0',
    messagingSenderId: '219552379409',
    projectId: 'easyshopping-ea60e',
    storageBucket: 'easyshopping-ea60e.firebasestorage.app',
    iosBundleId: 'com.example.eCommerce',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBsiGatswPleHJYnJuOiol0ZBInpJ2Q710',
    appId: '1:219552379409:web:f7a539d21a3873f06177b0',
    messagingSenderId: '219552379409',
    projectId: 'easyshopping-ea60e',
    authDomain: 'easyshopping-ea60e.firebaseapp.com',
    storageBucket: 'easyshopping-ea60e.firebasestorage.app',
    measurementId: 'G-K7VT8G8MF6',
  );
}
