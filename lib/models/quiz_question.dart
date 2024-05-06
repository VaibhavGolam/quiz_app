class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  //shuffles the answers
  List<String> get shuffleAnswers {
    //copy the orginal list , so it is not changed
    final shuffledAnswers = List.of(answers);

    shuffledAnswers.shuffle(); //list is shuffled
    return shuffledAnswers;
  }
}
