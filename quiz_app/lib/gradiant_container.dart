import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/questions.dart';

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
  List<String> selectedAnswers = [];
  var activeScreen = "first-screen";
  void switchScreen() {
    setState(
      () {
        activeScreen = "question-screen";
      },
    );
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'start-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == "question-screen") {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [widget.color1, widget.color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: screenWidget,
    );
  }
}
