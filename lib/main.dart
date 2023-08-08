import 'package:diana_portfolio/About.dart';
import 'package:diana_portfolio/Projects.dart';
import 'package:diana_portfolio/Resume.dart';
import 'package:diana_portfolio/contact.dart';
import 'package:diana_portfolio/first_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    )
  );
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FirstPage(),
    );
  }
}