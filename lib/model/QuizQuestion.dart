class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;
// The answers are expected to be in a shuffled order when displayed
  List<String> getShuffledAnswers() { // This method returns a shuffled version of the answers

  //we make a cpoy of the data 
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
  //this fun able to copy data and maped 
}