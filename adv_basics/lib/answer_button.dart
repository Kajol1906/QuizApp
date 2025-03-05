import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({ required this.answerText, required this.onTap ,super.key});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(answerText, textAlign: TextAlign.center,),
    );
  }
}
