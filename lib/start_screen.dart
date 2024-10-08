import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(188, 255, 255,
              255), //can use this color overlay to change opacity of image
        ),
        const SizedBox(height: 50),
        const Text(
          "Learn Flutter the fun way!",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        const SizedBox(height: 30),
        OutlinedButton.icon(
            icon: const Icon(
              Icons.arrow_forward_rounded,
              color: Colors.white,
            ),
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text("Start quiz")),
      ],
    ));
  }
}
