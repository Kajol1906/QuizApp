import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
           Image.asset(
          'assets/images/quiz-logo.png',width: 300,
          color: const Color.fromARGB(131, 255, 255, 255)),
      /*Opacity(
        opacity: 0.8,
        child:
          width: 300,
        ),
      ), */
      const SizedBox(height: 80),
      const Text(
        "LearnFlutter",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      const SizedBox(height: 30),
      OutlinedButton.icon(
        onPressed: () {},
        style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
        icon: const Icon(Icons.arrow_right_alt),
        label: Text("Start Quiz"),
      )
    ]));
  }
}
