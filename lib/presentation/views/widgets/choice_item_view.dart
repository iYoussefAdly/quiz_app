import 'package:flutter/material.dart';
import 'package:quiz_app/presentation/views/widgets/choice_item.dart';

class ChoiceItemView extends StatelessWidget {
  const ChoiceItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: ChoiceItem(),
      ),
    );
  }
}
