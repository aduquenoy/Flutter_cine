import 'package:flutter/material.dart';
import 'package:movie_app/screens/home/home_screen.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen.navigate(
          name: 'assets/splash.flr',
          backgroundColor: Color(0xff72208F),
          next: (_) => HomeScreen(),
          until: () => Future.delayed(Duration(seconds: 2)),
          startAnimation: 'Intro',
      ),
    );
  }
}