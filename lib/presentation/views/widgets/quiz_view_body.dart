import 'package:flutter/material.dart';
import 'package:quiz_app/core/styles.dart';
import 'package:quiz_app/core/widgets/custom_back_ground_color.dart';
import 'package:quiz_app/presentation/views/widgets/question_number.dart';
import 'package:quiz_app/presentation/views/widgets/unselected_question_item.dart';

class QuizViewBody extends StatelessWidget {
  const QuizViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomBackGroundColor(
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              QuestionNumber(),
              SizedBox(height: 16),
              Text(
                'How would you describe \nyour level of satisfaction \nwith the healthcare \nsystem?',
                style: Styles.font24Mediium,
              ),
              SizedBox(height: 32),
              UnselectedQuestionItem(),
            ],
          ),
        ),
      ),
    );
  }
}

