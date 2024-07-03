
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
    apiKey: 'AIzaSyDUzcsCRK6JXZ2lB5F7PDjcf9p2QXF79x4',
    appId: '1:16775922154:web:01418de50d21456f25f293',
    messagingSenderId: '16775922154',
    projectId: 'courir-a604f',
    authDomain: 'courir-a604f.firebaseapp.com',
    storageBucket: 'courir-a604f.appspot.com',
    measurementId: 'G-R7LX91WBG9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCeKNPl8_H6LnUfTdzIbL0c2LIF4TKS5ps',
    appId: '1:16775922154:android:2e2e89003c54598f25f293',
    messagingSenderId: '16775922154',
    projectId: 'courir-a604f',
    storageBucket: 'courir-a604f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB5qzGzLQQQFHB6Q4LvctVrsrvBbWruMLM',
    appId: '1:16775922154:ios:f2593cbef68e002b25f293',
    messagingSenderId: '16775922154',
    projectId: 'courir-a604f',
    storageBucket: 'courir-a604f.appspot.com',
    iosBundleId: 'com.example.courir1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB5qzGzLQQQFHB6Q4LvctVrsrvBbWruMLM',
    appId: '1:16775922154:ios:3d18e9efa0c0b2db25f293',
    messagingSenderId: '16775922154',
    projectId: 'courir-a604f',
    storageBucket: 'courir-a604f.appspot.com',
    iosBundleId: 'com.example.courir1.RunnerTests',
  );
}
