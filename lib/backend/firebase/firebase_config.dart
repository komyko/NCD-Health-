import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAZDXfUUFx3NcXako3Y-8c7nzf9JV64L0w",
            authDomain: "ncdshealthproject.firebaseapp.com",
            projectId: "ncdshealthproject",
            storageBucket: "ncdshealthproject.appspot.com",
            messagingSenderId: "140913412758",
            appId: "1:140913412758:web:c508c5a03197a99cfc50b7",
            measurementId: "G-G91LV39NY9"));
  } else {
    await Firebase.initializeApp();
  }
}
