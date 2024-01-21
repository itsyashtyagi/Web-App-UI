import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:web_apps_flutter/pages/home.dart';
import 'package:web_apps_flutter/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyANISbTY65JnAPOr-3kMlkC-xCuAosB1L4",
      appId: "1:1049596424676:web:631c89b7b251d3469117f1",
      messagingSenderId: "1049596424676",
      projectId: "flutter-web-connection-4f2c3",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xpense Web App',
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: 'HindSiliguri',
        primaryColor: AppColors.primary,
      ),
      home: Home(),
    );
  }
}
