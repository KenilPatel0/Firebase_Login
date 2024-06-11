import 'package:firebase/HomePage.dart';
import 'package:firebase/LoginPage.dart';
import 'package:firebase/SignUP.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDP3RA_0yDknSXiStrAvcmNRTp6SZwVV_Q",
            authDomain: "test-3f75d.firebaseapp.com",
            projectId: "test-3f75d",
            storageBucket: "test-3f75d.appspot.com",
            messagingSenderId: "593703527542",
            appId: "1:593703527542:web:17d2929694db0685406b57",
            measurementId: "G-TL64PBMTPC"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LoginPage(),
    );
  }
}
