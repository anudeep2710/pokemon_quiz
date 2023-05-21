import 'package:flutter/material.dart';
import 'dummy.dart';
// import 'quizquestion.dart';
// import 'question_screen.dart';
class AnswerButton extends StatelessWidget {

  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    
    



    var quizquestion=questions[0];

    
    
    return SizedBox(
      width: 350,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 40,
          ),
          backgroundColor:quizquestion.color3,
          foregroundColor:quizquestion.color2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Text(
          answerText,
          textAlign: TextAlign.center,
        ),
      ),
    ); 
  }
}