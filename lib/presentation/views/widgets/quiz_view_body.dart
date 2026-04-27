import 'package:flutter/material.dart';
import 'package:quiz_app/core/widgets/custom_back_ground_color.dart';
import 'package:quiz_app/data/models/question_model.dart';
import 'package:quiz_app/presentation/views/widgets/action_buttons.dart';
import 'package:quiz_app/presentation/views/widgets/qustion_item.dart';

class QuizViewBody extends StatefulWidget {
  const QuizViewBody({super.key});

  @override
  State<QuizViewBody> createState() => _QuizViewBodyState();
}

class _QuizViewBodyState extends State<QuizViewBody> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CustomBackGroundColor(
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Expanded(child: QustionItem(question: questions()[currentIndex])),
              ActionButtons(
                onBack: () {
                  if (currentIndex > 0) {
                    setState(() {
                    currentIndex--;  
                    });
                  }
                },
                onNext: () {
                  if (currentIndex < questions().length-1) {
                    setState(() {
                      currentIndex++;
                    });
                  }
                },
              ),
              SizedBox(height: 33),
            ],
          ),
        ),
      ),
    );
  }
}
