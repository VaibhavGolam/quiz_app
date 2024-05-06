import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/question_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  final void Function() onRestart;
  final List<String> chosenAnswers;

  //gets the summary of user answers
  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answers': questions[i].answers[0],
          'user_answers': chosenAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final int totalQuestion = questions.length;
    final userCorrectAnswersCount = summaryData
        .where(
          (data) => data['user_answers'] == data['correct_answers'],
        )
        .length;

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //heading
              Text(
                'You answered $userCorrectAnswersCount out of $totalQuestion questions correctly!',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              //gap between
              const SizedBox(
                height: 20,
              ),

              //answers
              QuestionSummary(
                summaryData: summaryData,
              ),

              //gap between
              const SizedBox(
                height: 20,
              ),

              //restart button
              TextButton.icon(
                onPressed: onRestart,
                icon: const Icon(Icons.refresh_rounded),
                label: const Text('Restart Quiz!'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
