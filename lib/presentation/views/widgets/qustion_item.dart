import 'package:flutter/material.dart';
import 'package:quiz_app/core/styles.dart';
import 'package:quiz_app/presentation/views/widgets/choice_item_view.dart';
import 'package:quiz_app/presentation/views/widgets/question_number.dart';

class QustionItem extends StatelessWidget {
  const QustionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionNumber(),
        SizedBox(height: 16),
        Text(
          'How would you describe \nyour level of satisfaction \nwith the healthcare \nsystem?',
          style: Styles.font24Mediium,
        ),
        SizedBox(height: 32),
        Expanded(child: ChoiceItemView()),
      ],
    );
  }
}
