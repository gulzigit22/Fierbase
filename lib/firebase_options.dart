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
    apiKey: 'AIzaSyAeXdV1IU8jiBaWL7YQOE2hJ7MoB0Lw9zE',
    appId: '1:29503673847:web:69715f62bf42d627fe8af2',
    messagingSenderId: '29503673847',
    projectId: 'new-project-a2483',
    authDomain: 'new-project-a2483.firebaseapp.com',
    storageBucket: 'new-project-a2483.appspot.com',
    measurementId: 'G-DY8YX7PZ43',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBuyB2Tkxcwruq_h1L-MsxzNe5rg_Yv_0k',
    appId: '1:29503673847:android:15ce1939ad13ab08fe8af2',
    messagingSenderId: '29503673847',
    projectId: 'new-project-a2483',
    storageBucket: 'new-project-a2483.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDNJImkcTliLJtiObOrnh4J6uhBkMKkMjQ',
    appId: '1:29503673847:ios:0d11bac01232cfcbfe8af2',
    messagingSenderId: '29503673847',
    projectId: 'new-project-a2483',
    storageBucket: 'new-project-a2483.appspot.com',
    iosClientId: '29503673847-64r75r895c6me8585dqgnleop5qjnd51.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebase1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDNJImkcTliLJtiObOrnh4J6uhBkMKkMjQ',
    appId: '1:29503673847:ios:0d11bac01232cfcbfe8af2',
    messagingSenderId: '29503673847',
    projectId: 'new-project-a2483',
    storageBucket: 'new-project-a2483.appspot.com',
    iosClientId: '29503673847-64r75r895c6me8585dqgnleop5qjnd51.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebase1',
  );
}
