import 'package:flutter/material.dart';
import 'package:quiz_app/gradiant_container.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradiantContainer(
          Color.fromARGB(255, 26, 2, 80),
          Color.fromARGB(255, 45, 7, 98),
        ),
      ),
    );
  }
}
