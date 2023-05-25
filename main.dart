
import 'package:flutter/material.dart';
import 'package:flutter2/ani/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login and Register App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Freg(),
    );
  }
}

