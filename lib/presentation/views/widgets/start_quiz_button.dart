import 'package:flutter/material.dart';
import 'package:quiz_app/core/styles.dart';
import 'package:quiz_app/presentation/quiz_view.dart';

class StartQuizButton extends StatelessWidget {
  const StartQuizButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => QuizView())),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 13),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        child: Center(
          child: Text(
            'Start Quiz',
            style: Styles.font18Medium
          ),
        ),
      ),
    );
  }
}
