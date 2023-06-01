import 'package:flutter/material.dart';
import 'package:todo_fuller/Pages/HomePage.dart';
import 'package:todo_fuller/Theme_Service.dart';

import 'Ui/Theme.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.red,
        brightness: Brightness.light,
      ),
      themeMode: ThemeService().theme,
      darkTheme: ThemeData(
        primaryColor: Colors.red,
        brightness: Brightness.dark
      ),
      home: HomePAge(),
      routes: {
        HomePAge.id:(context)=>HomePAge(),
      },
    );
  }
}