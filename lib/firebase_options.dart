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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDJQrLc753mAVVOsYl46NCWEvIO4g4jnjc',
    appId: '1:5500790539:android:b81b8aa17db05521df640e',
    messagingSenderId: '5500790539',
    projectId: 'air-quality-3e12b',
    databaseURL: 'https://air-quality-3e12b-default-rtdb.firebaseio.com',
    storageBucket: 'air-quality-3e12b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBpMmaiy3X5FeW34mE2udhCjfy6Gp4RuuQ',
    appId: '1:5500790539:ios:17633d6d19b02d0bdf640e',
    messagingSenderId: '5500790539',
    projectId: 'air-quality-3e12b',
    databaseURL: 'https://air-quality-3e12b-default-rtdb.firebaseio.com',
    storageBucket: 'air-quality-3e12b.appspot.com',
    androidClientId: '5500790539-4v6hkcv4k44mukvk2v0e4mvj3cujhnib.apps.googleusercontent.com',
    iosClientId: '5500790539-62q3viti8kj09hbead3ulnhsmlogss6n.apps.googleusercontent.com',
    iosBundleId: 'com.example.airquality',
  );
}
