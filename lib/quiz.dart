import 'package:flutter/material.dart';
import 'package:pokemon_quiz/Start_screen.dart';
import 'package:pokemon_quiz/question_screen.dart';
// import 'package:pokemon_quiz/quizquestion.dart';
import 'dummy.dart';
// import 'quizquestion.dart';

class quiz extends StatefulWidget {
  const quiz({super.key});

  @override
  State<quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<quiz> {
  var activeScreen = 'start-screen';
  var c=0;
  void nextsect(){
    setState(() {
      c++;
    });
  }

  void switchScreen() {
    setState(() {

      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    var quizquestion=questions[c];
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = const QuestionState();
    }

    


    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration:  BoxDecoration(
            gradient: LinearGradient(
              colors:quizquestion.color1,
            ),
          ),
        child: screenWidget,
        ),
      ),
    );
  }
}