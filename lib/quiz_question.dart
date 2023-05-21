class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;



  List <String> GetShuffledList(){
    final ShuffledList =List.of(answers);
     ShuffledList.shuffle();
     return ShuffledList;
  }
}