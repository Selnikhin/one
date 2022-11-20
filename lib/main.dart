import 'package:flutter/material.dart';
import 'Sign In/SignIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sin in',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignIn(),
    );
  }
}
