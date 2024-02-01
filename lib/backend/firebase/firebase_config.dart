import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCNihKDRxDrNtuZiRLFGjhHCcea9sGrNYs",
            authDomain: "g-c-s-e-quiz-1ym0z3.firebaseapp.com",
            projectId: "g-c-s-e-quiz-1ym0z3",
            storageBucket: "g-c-s-e-quiz-1ym0z3.appspot.com",
            messagingSenderId: "633262141228",
            appId: "1:633262141228:web:a5efacd7e3b21966d3c689"));
  } else {
    await Firebase.initializeApp();
  }
}
