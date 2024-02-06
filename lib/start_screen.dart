import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz_image.png', width: 200),
          const SizedBox(height: 80),
          const Text('Learn flutter the way of fun',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              )),
          const SizedBox(height: 30),
          OutlinedButton.icon(
              onPressed: (startQuiz),
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start Quiz'))
        ],
      ),
    );
  }
}
