import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/question_identifier.dart';
import 'package:flutter_quiz_app/quiz_decoration.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(
    this.itemData, {
    super.key,
  });

  final Map<String, Object> itemData;

  @override
  Widget build(context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
            questionIndex: itemData['question_index'] as int,
            isCorrectAnswer: isCorrectAnswer),
        const SizedBox(width: 20),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuestionDecoration(
              answerText: itemData['question'].toString(),
              foSize: 16,
              type: FontWeight.bold,
              colors: Colors.white,
              align: TextAlign.justify,
            ),
            const SizedBox(
              height: 5,
            ),
            QuestionDecoration(
              answerText: itemData['user_answer'].toString(),
              foSize: 13,
              type: FontWeight.w900,
              colors: Colors.deepPurpleAccent,
              align: TextAlign.justify,
            ),
            QuestionDecoration(
              answerText: itemData['correct_answer'].toString(),
              foSize: 13,
              type: FontWeight.w900,
              colors: Colors.cyan,
              align: TextAlign.justify,
            ),
          ],
        ))
      ],
    );
  }
}
