import 'package:flutter/material.dart';
import 'package:quiz_app/core/assets.dart';
import 'package:quiz_app/core/styles.dart';
import 'package:svg_flutter/svg.dart';

class QuestionNumber extends StatelessWidget {
  const QuestionNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: const Color(0xFF8D83FF),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: const Color(0xFFB8B2FF)),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(Assets.question1),
          SizedBox(width: 8),
          Text('Question 1', style: Styles.font12Regular),
        ],
      ),
    );
  }
}
