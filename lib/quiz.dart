import 'package:flutter/material.dart';
import 'questions.dart';

import 'package:project2_0/start_screen.dart';
import 'package:project2_0/questions_screen.dart';
import 'results.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});


  



  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
      final List <String> selectedAnswers=[];

  var activeScreen='start-screen';

  
  void switchScreen() {
    setState(() {
      activeScreen ="questions-screen" ;
    });
  }
  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if (selectedAnswers.length==questions.length){
      setState(() {
          activeScreen="result-screen";

      });
      
    }
  }
  


  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen=="questions-screen"){
      screenWidget=  QuestionsScreen(onSelectedanswer: chooseAnswer,);
    }
    if (activeScreen=="result-screen"){
        screenWidget= result_Screen(chosenanswers: selectedAnswers,);
      }



    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
