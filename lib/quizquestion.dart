import 'package:flutter/material.dart';

class Questions{
  const Questions(this.pokemon,this.answer,this.color1,this.color2,this.color3);
 
  final String  pokemon;
  final List<String> answer;
  final List <Color> color1;

 
   final Color color3;
  final Color color2;
  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answer);
    shuffledList.shuffle();
    return shuffledList;
  }


}