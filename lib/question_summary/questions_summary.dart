import 'package:flutter/material.dart';
import 'package:quiz/question_summary/summary_item.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({
    super.key,
    required this.summaryData,
  });

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
  

    //final isCorrectAnser = data['user_answers'] == data['correct_answers'];

    return SingleChildScrollView(
      child: Column(
        children: summaryData.map(
          (data) {
            return SummaryItem(data);
          },
        ).toList(),
      ),
    );
  }
}
