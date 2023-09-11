import 'package:flutter/material.dart';
import 'package:quiz_app/gradiant_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: GradiantContainer(
              Color.fromARGB(255, 26, 2, 80), Color.fromARGB(255, 45, 7, 98))),
    ),
  );
}
