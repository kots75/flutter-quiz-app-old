import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final VoidCallback resetQuiz;

  const Result({required this.finalScore, required this.resetQuiz, super.key});

  String get resultMessage {
    String message;
    if (finalScore <= 8) {
      message = 'We have less in common';
    } else if (finalScore <= 12) {
      message = 'We have more in common';
    } else if (finalScore <= 16) {
      message = 'We have a lot more in common';
    } else {
      message = 'We are extremely similar';
    }

    return message;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultMessage,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Colors.deepOrange.shade300),
            ),
            onPressed: resetQuiz,
            child: const Text('Reset Quiz'),
          )
        ],
      ),
    );
  }
}
