import 'package:flutter/material.dart';
import 'package:kabarin/screens/activity_list.dart';
import 'package:kabarin/screens/home.dart';
import 'package:kabarin/screens/login.dart';
import 'package:kabarin/screens/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/home': (context) => Home(),
        '/activity_list': (context) => ActivityList(),
      },
      title: 'Kabarin',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blueGrey,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
