import 'package:flutter/material.dart';
import 'package:ui_design/main_screen.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart'; //imported the fontawesome icons

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        drawer: const Drawer(
          backgroundColor: Colors.teal,
        ),
        body: const MainScreen(),
      ),
    );
  }
}