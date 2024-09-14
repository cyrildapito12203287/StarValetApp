import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBDxFPmt5IMoruF0CI765VWoVDPFayQW3s",
            authDomain: "starvaletapp.firebaseapp.com",
            projectId: "starvaletapp",
            storageBucket: "starvaletapp.appspot.com",
            messagingSenderId: "346283928128",
            appId: "1:346283928128:web:7d7a4f951bd10cc1794da5"));
  } else {
    await Firebase.initializeApp();
  }
}
