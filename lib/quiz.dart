import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/questions_screen.dart';
import 'package:flutter_quiz_app/start_screen.dart';
import 'package:flutter_quiz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  var activeScreen = 'start_screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions_screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswer.add(answer);

    if(selectedAnswer.length == questions.length){
      setState(() {
        activeScreen = 'result_screen';
      });
    }
  }

  void restartQuiz(){
    setState(() {
      selectedAnswer = [];
      activeScreen = 'question_screen';
    });
  }

  @override
  Widget build(context) {
    var screenWidth = activeScreen == 'start_screen'
        ? StartScreen(switchScreen)
        :  QuestionScreen(onSelectedAnswer: chooseAnswer);

    if(activeScreen == 'result_screen') {
      screenWidth = ResultScreen(chosenAnswer: selectedAnswer,onRestart: restartQuiz);
    }

    return MaterialApp(
      home: Scaffold(
          body: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.purple, Colors.deepPurple],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
              ),
              child: screenWidth)),
    );
  }
}
