import 'package:firebase_core/firebase_core.dart'
    show FirebaseOptions;
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
    authDomain: 'automatedforeignoffice.firebaseapp.com',
    measurementId: 'G-NLTNJPKT3S',
    apiKey: 'AIzaSyCCxMAiD6d9-DQHAM-_5c0NFh4vmHn_kRY',
    appId: '1:625009905733:web:7a8e5e064b710fa11ed32c',
    messagingSenderId: '603248941877',
    projectId: 'automatedforeignoffice',
    storageBucket: 'automatedforeignoffice.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCCxMAiD6d9-DQHAM-_5c0NFh4vmHn_kRY',
    appId: '1:625009905733:android:7a8e5e064b710fa11ed32c',
    messagingSenderId: '603248941877',
    projectId: 'automatedforeignoffice',
    storageBucket: 'automatedforeignoffice.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCCxMAiD6d9-DQHAM-_5c0NFh4vmHn_kRY',
    appId: '1:625009905733:ios:7a8e5e064b710fa11ed32c',
    messagingSenderId: '603248941877',
    projectId: 'automatedforeignoffice',
    storageBucket: 'automatedforeignoffice.appspot.com',
    iosClientId: '603248941877-kna3fsu407ta54cqgh0baho11n6dntgb.apps.googleusercontent.com',
    iosBundleId: 'com.adam.quran',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCCxMAiD6d9-DQHAM-_5c0NFh4vmHn_kRY',
    appId: '1:625009905733:ios:7a8e5e064b710fa11ed32c',
    messagingSenderId: '603248941877',
    projectId: 'automatedforeignoffice',
    storageBucket: 'automatedforeignoffice.appspot.com',
    iosClientId: '603248941877-kna3fsu407ta54cqgh0baho11n6dntgb.apps.googleusercontent.com',
    iosBundleId: 'com.adam.quran',
  );
}
