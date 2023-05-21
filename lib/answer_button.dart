import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});
  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 40),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 57, 28, 134),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
      ),
      onPressed: onTap,
      child: Text(answerText),
    );
  }
}
