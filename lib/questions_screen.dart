import 'package:flutter/material.dart';
import "answer_button.dart";
import 'questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const  QuestionsScreen({super.key,required this.onSelectedanswer});

final void Function(String answer) onSelectedanswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }


}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var c=0;
  void NextQuesion(String selectedAnswers){
    widget.onSelectedanswer(selectedAnswers);
    setState(() {
         c++;

    });

  }
  @override
  Widget build(context) {
    final currentquestion = questions[c];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentquestion.text,
              style: GoogleFonts.lato(
                color:const Color.fromARGB(255, 201, 153, 251),
                fontSize: 28,
                fontWeight: FontWeight.bold


              ),
              textAlign:TextAlign.center ,
            
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentquestion.GetShuffledList().map((answer) {
              return AnswerButton(answerText: answer, onTap: (){
                NextQuesion(answer);

              });
            })
          ],
        ),
      ),
    );
  }
}
