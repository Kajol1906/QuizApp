import 'package:adv_basics/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var questionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[questionIndex];

    return SizedBox(
      width: double.infinity, // Take full width
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ), //const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                onTap: () {
                  answerQuestion(answer);
                }, //  Answer button calls function
                answerText: answer,
              );
            }),
          ],
        ),
      ),
    );
  }
}

/* ...currentquestion.answer.map((answer) {
      return AnswerButton(onTap: () {}, answerText: answer);


AnswerButton(onTap: () {}, answerText: currentquestion.answer[0]),
AnswerButton(onTap: () {}, answerText: currentquestion.answer[1]),
AnswerButton(onTap: () {}, answerText: currentquestion.answer[2]),
AnswerButton(onTap: () {}, answerText: currentquestion.answer[3]), */