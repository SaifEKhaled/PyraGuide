import 'package:flutter/material.dart';
import 'SignUpPage.dart';
import 'LoginPage.dart';
import 'HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PyraGuide',
      initialRoute: '/',
      routes: {
        '/login': (context) => LoginPage(),
        '/': (context) => HomePage(),
        '/signup': (context) => SignUpPage(),
      },
    );
  }
}
