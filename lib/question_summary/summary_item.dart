import 'package:flutter/material.dart';
import 'package:quiz/question_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    //colors
    Color pink = const Color.fromARGB(255, 255, 128, 171);
    Color cyan = const Color.fromARGB(255, 9, 192, 216);

    final iscorrectAnswer =
        itemData['user_answers'] == itemData['correct_answers'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // //question number
        QuestionIdentifier(
          iscorrectAnswer: iscorrectAnswer,
          questionIndex: itemData['question_index'] as int,
        ),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //create space
              const SizedBox(
                height: 10,
              ),

              //questions
              Text(
                ((itemData['question'] as String)),
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),

              //correct answers
              Text(
                ((itemData['user_answers'] as String)),
                 style: TextStyle(color: pink),
              ),

              //user_answers
              Text(
                ((itemData['correct_answers'] as String)),
                style: TextStyle(color: cyan),
              ),

              const SizedBox(
                height: 10,
              )
            ],
          ),
        )
      ],
    );
  }
}
