import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //quiz logo
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),

            //gap between
            const SizedBox(
              height: 80,
            ),

            //learn flutter the fun way! text
            const Text(
              'Learn Flutter the fun way!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            //gap between
            const SizedBox(
              height: 10,
            ),

            //start quiz button
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              onPressed: startQuiz,
              icon: const Icon(Icons.quiz),
              label: const Text('Start Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
