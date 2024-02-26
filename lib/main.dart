import 'package:flipcart_ui/Starting_Page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Starting_Page(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
          child: Image.asset(
        "Assets/Images/flipcart_logo.png",
        width: 80,
        height: 80,
      )),
    );
  }
}
