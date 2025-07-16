import 'package:flutter/material.dart';
import "data/questions.dart";
import 'QuestionsSummary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  final List<String> chosenAnswers;
  final void Function() onRestart;  
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i]
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text(
  'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
  style: const TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.5,
  ),
  textAlign: TextAlign.center,
),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
  onPressed:onRestart,
  style: OutlinedButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: const Color.fromARGB(255, 33, 1, 95),
    padding: const EdgeInsets.symmetric(
      vertical: 10,
      horizontal: 40,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(40),
    ),
  ),
  icon: const Icon(Icons.refresh),
  label: const Text(
    'Restart Quiz!',
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  ),
),
          ],
        ),
      ),
    );
  }
}