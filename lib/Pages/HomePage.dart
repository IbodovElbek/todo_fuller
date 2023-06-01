import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePAge extends StatefulWidget {
  static final id="HomePAge";
  const HomePAge({Key? key}) : super(key: key);
  @override
  State<HomePAge> createState() => _HomePAgeState();
}

class _HomePAgeState extends State<HomePAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Text("Theme Data"),
    );
  }
}
