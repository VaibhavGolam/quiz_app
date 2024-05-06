import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final void Function() onTap;
  final String answerText;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color.fromARGB(255, 9, 23, 104),
        ),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
        style: GoogleFonts.lato(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
