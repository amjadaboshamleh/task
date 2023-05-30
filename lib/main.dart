import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:task/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        backgroundColor: Colors.blue,
        // centered: false,
        // curve: Curves.linear,

        splashIconSize: 200,
        animationDuration: Duration(seconds: 7),
        splash:
        CircleAvatar(
          radius: 190,
          child: Image.asset('images/Splach.jpg'),),
        nextScreen: Home_screen(),
      ),
    );
  }
}
