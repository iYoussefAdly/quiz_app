import 'package:flutter/material.dart';
import 'package:quiz_app/core/styles.dart';
import 'package:quiz_app/core/widgets/custom_back_ground_color.dart';
import 'package:quiz_app/presentation/views/widgets/start_quiz_button.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundColor(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SafeArea(
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Text('Good morning,', style: Styles.font16Regular),
              SizedBox(height: 8),
              Text('New topic is waiting', style: Styles.font24Mediium),
              Spacer(),
              StartQuizButton(),
              SizedBox(
                height: 35,
              )
            ],
          ),
        ),
      ),
    );
  }
}
