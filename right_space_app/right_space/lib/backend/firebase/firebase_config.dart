import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDURVff-XvYvlJL-CcftYW5aTZOz2zVUa8",
            authDomain: "right-space-ivt5bp.firebaseapp.com",
            projectId: "right-space-ivt5bp",
            storageBucket: "right-space-ivt5bp.appspot.com",
            messagingSenderId: "714586356827",
            appId: "1:714586356827:web:2bb09f7e39c5003af1d37e"));
  } else {
    await Firebase.initializeApp();
  }
}
