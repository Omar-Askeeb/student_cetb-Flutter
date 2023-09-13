import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD8pMrIXPTT3NKYgTK-r_75DfZfPg0QZC8",
            authDomain: "student-app-d0f09.firebaseapp.com",
            projectId: "student-app-d0f09",
            storageBucket: "student-app-d0f09.appspot.com",
            messagingSenderId: "185294576415",
            appId: "1:185294576415:web:c80cb8b29f284408fdae2a",
            measurementId: "G-D9Z3ZZ1W7V"));
  } else {
    await Firebase.initializeApp();
  }
}
