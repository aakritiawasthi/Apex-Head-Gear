import 'package:flutter/material.dart';
import 'package:map_demo/apex.dart';
import 'package:map_demo/login_page.dart';
import 'package:map_demo/homepage.dart';
import 'package:map_demo/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
        ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        inputDecorationTheme: InputDecorationTheme(
          // filled: true,
          // fillColor: Colors.white,
        ),
      ),
      themeMode: ThemeMode.dark,
      home: Apex(),
    );
  }
}
