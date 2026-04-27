import 'package:flutter/material.dart';
import 'package:quiz_app/core/widgets/custom_back_ground_color.dart';
import 'package:quiz_app/presentation/views/widgets/action_buttons.dart';
import 'package:quiz_app/presentation/views/widgets/qustion_item.dart';
class QuizViewBody extends StatelessWidget {
  const QuizViewBody({super.key});
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
              Expanded(child: QustionItem()),
              ActionButtons(),
              SizedBox(
                height: 33,
              )
            ],
          ),
        ),
      ),
    );
  }
}



