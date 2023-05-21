import 'package:flutter/material.dart';
import 'package:project2_0/questions.dart';
// import 'quiz_question.dart';
import 'summay.dart';

class result_Screen extends StatelessWidget {
  const result_Screen({super.key,required 
  this.chosenanswers});
  final List <String> chosenanswers;
  List <Map<String,Object>> getSummaryData(){
    List <Map<String,Object>> summary=[];
    for (var i=0;i<chosenanswers.length;i++){
      summary.add({
        "question_index": i,
        "question_text" :questions[i].text,
        "question_answer":questions[i].answers[0],
        "user_answer":chosenanswers

      });


    }
    return summary;


  }



  @override
  Widget build(BuildContext context) {
    // final summaryData = getSummaryData();
    // final numTotalQuestions = questions.length;
    // final numCorrectQuestions = summaryData.where((data) {
    //   return data['user_answer'] == data['correct_answer'];
    // }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You answered numCorrectQuestions out of numTotalQuestions questions correctly!',
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(getSummaryData()),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Quiz!'),
            )
          ],
        ),
      ),
    );
  }
}