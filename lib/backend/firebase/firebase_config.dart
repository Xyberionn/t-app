import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBhnnOsl3iaMJLL0XovuSfae206_r4IJ-g",
            authDomain: "teacher-pz6e2o.firebaseapp.com",
            projectId: "teacher-pz6e2o",
            storageBucket: "teacher-pz6e2o.appspot.com",
            messagingSenderId: "56755583550",
            appId: "1:56755583550:web:94c2f15d47c5e8b45daf6f"));
  } else {
    await Firebase.initializeApp();
  }
}
