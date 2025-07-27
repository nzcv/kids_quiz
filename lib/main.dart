import 'package:flutter/material.dart';
import 'package:kids_quiz/view/answer_screen.dart/answer_screen.dart';

import 'package:kids_quiz/view/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}
