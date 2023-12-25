import 'package:flutter/material.dart';
import 'package:softwaretest/ChosenLocationPage.dart';
import 'SignUpPage.dart';
import 'LoginPage.dart';
import 'WelcomePage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PyraGuide',
      initialRoute: '/home', // Set the initial route to home
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => WelcomePage(), // Use '/home' instead of '/'
        '/signup': (context) => SignUpPage(),
        '/chosenlocation': (context) => ChosenLocationPage(),
      },
    );
  }
}
