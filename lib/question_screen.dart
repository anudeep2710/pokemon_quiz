import 'package:flutter/material.dart';
import 'buttton.dart';
import 'dummy.dart';
// import 'quizquestion.dart';

class QuestionState extends StatefulWidget {
  const QuestionState({super.key});

  @override
  State<QuestionState> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionState> {
        int co=0;

  void nextsect(){
    setState(() {
      co++;
    });
  }
  
  get quizquestion => questions[co];
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 50,),

      Image.asset(quizquestion.pokemon,width: 250,),
      AnswerButton(
        answerText:  quizquestion.answer[0],
        onTap: nextsect
      ),
      AnswerButton(
        answerText: quizquestion.answer[1],
        onTap: nextsect,
      ),
      AnswerButton(
        answerText:  quizquestion.answer[2],
        onTap: nextsect,
      ),
      AnswerButton(
        answerText:  quizquestion.answer[3],
        onTap: nextsect,
      )
    ]);
  }
}
