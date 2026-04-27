import 'package:flutter/material.dart';
import 'package:quiz_app/presentation/views/widgets/custom_back_button.dart';
import 'package:quiz_app/presentation/views/widgets/next_button.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [CustomBackButton(), NextButton()],
    );
  }
}
