import 'package:flutter/material.dart';
import 'package:sample_project/homepage.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green
      ),
      home: const HomePage(),
    );
  }
}