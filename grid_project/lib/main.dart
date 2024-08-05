import 'package:flutter/material.dart';
import 'package:grid_project/HomePage.dart';
import 'package:grid_project/Listbuilder.dart';
import 'package:grid_project/Listview.dart';
import 'package:grid_project/formdesign.dart';
import 'package:grid_project/gridbuild_project.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Formproject(),
    );
  }
}