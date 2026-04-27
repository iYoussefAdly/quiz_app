import 'package:flutter/material.dart';
import 'package:quiz_app/presentation/views/widgets/multi_choice_item.dart';
class MultiChoiceItemView extends StatelessWidget {
  const MultiChoiceItemView({super.key, required this.choices});
  final List<String> choices;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: choices.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: MultiChoiceItem(choice: choices[index],),
      ),
    );
  }
}
