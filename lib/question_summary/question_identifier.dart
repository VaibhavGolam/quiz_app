import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.questionIndex, required this.iscorrectAnswer});

  final int questionIndex;
  final bool iscorrectAnswer;

  @override
  Widget build(BuildContext context) {
    //colors
    Color pink = const Color.fromARGB(255, 255, 128, 171);
    Color cyan = const Color.fromARGB(255, 9, 192, 216);

    final int questionNumber = questionIndex + 1;

    return //question number
        Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: iscorrectAnswer ? cyan : pink,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          questionNumber.toString(),
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
