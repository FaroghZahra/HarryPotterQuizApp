import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class MyImage extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionindex;
  final Function handler;

  MyImage({
    required this.question,
    required this.questionindex,
    required this.handler,
  });

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/hogwarts-castle.jpg"),
        fit: BoxFit.cover,
      )),
      child: Column(
        children: [
          Questions(
            (question[questionindex]['text']) as String,
          ),
          ...(question[questionindex]['answers'] as List<Map<String, Object>>).map((answer) {
            return Answers(() => handler(answer['score']), (answer['text']) as String);
          }).toList()
        ],
      ),
    );
  }
}
