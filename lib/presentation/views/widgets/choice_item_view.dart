import 'package:flutter/material.dart';
import 'package:quiz_app/presentation/views/widgets/choice_item.dart';
class ChoiceItemView extends StatelessWidget {
  const ChoiceItemView({super.key, required this.choices});
  final List<String> choices;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: choices.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: ChoiceItem(choice: choices[index],),
      ),
    );
  }
}
