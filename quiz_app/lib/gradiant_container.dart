import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/question_screen.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomCenter;

class GradiantContainer extends StatefulWidget {
  const GradiantContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  @override
  State<GradiantContainer> createState() => _GradiantContainerState();
}

class _GradiantContainerState extends State<GradiantContainer> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(
      () {
        activeScreen = const QuestionScreen();
      },
    );
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [widget.color1, widget.color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: activeScreen,
    );
  }
}
