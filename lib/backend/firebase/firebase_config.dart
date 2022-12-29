import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBRb7MYhTb1Afksq0jLSo8H2yDo8E8ceRI",
            authDomain: "philov-withcenter.firebaseapp.com",
            projectId: "philov-withcenter",
            storageBucket: "philov-withcenter.appspot.com",
            messagingSenderId: "523633440722",
            appId: "1:523633440722:web:ee009aca27934b209f3a0b",
            measurementId: "G-6T7NE4KPN2"));
  } else {
    await Firebase.initializeApp();
  }
}
