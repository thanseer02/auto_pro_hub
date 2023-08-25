import 'package:autoprohub/user_module/login/start.dart';
import 'package:flutter/material.dart';

import 'user_module/forgotpassword/forgot.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.black,
          centerTitle: true
        ),
        canvasColor: Colors.black,
      ),
      home: start(),
      debugShowCheckedModeBanner: false,
    );
  }
}