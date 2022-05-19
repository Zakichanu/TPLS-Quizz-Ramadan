import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnimatedSplashScreen(
        splash: const Image(image: AssetImage('lib/assets/img/TPLS.png')),
        duration: 1500,
        nextScreen: const MyHomePage(title: "Quizz Ramadan"),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: const Color.fromRGBO(0, 128, 55, 1),
        splashIconSize: 500,
      ),
    );
  }
}
