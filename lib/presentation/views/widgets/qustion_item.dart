import 'package:flutter/material.dart';
import 'package:quiz_app/core/styles.dart';
import 'package:quiz_app/data/models/question_model.dart';
import 'package:quiz_app/presentation/views/widgets/multi_choice_item_view.dart';
import 'package:quiz_app/presentation/views/widgets/single_choice_item_view.dart';
import 'package:quiz_app/presentation/views/widgets/question_number.dart';

class QustionItem extends StatelessWidget {
  const QustionItem({super.key, required this.question});
  final QuestionModel question;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionNumber(question: question),
        SizedBox(height: 16),
        Text(question.title, style: Styles.font24Mediium),
        SizedBox(height: 32),
        Expanded(
          child: question.isSingleChoice
              ? SingleChoiceItemView(choices: question.choices)
              : MultiChoiceItemView(choices: question.choices),
        ),
      ],
    );
  }
}
