import 'package:flutter/material.dart';
import 'package:quiz_app/presentation/views/widgets/single_choice_item.dart';

class SingleChoiceItemView extends StatefulWidget {
  const SingleChoiceItemView({super.key, required this.choices});
  final List<String> choices;
  @override
  State<SingleChoiceItemView> createState() => _SingleChoiceItemState();
}

class _SingleChoiceItemState extends State<SingleChoiceItemView> with AutomaticKeepAliveClientMixin {
  int selectedChoiceIndex = -1;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView.builder(
      itemCount: widget.choices.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: GestureDetector(
          onTap: () {
            setState(() {
            selectedChoiceIndex = index;  
            });
          },
          child: SingleChoiceItem(
            choice: widget.choices[index],
            isSelected: selectedChoiceIndex == index,
          ),
        ),
      ),
    );
  }
  
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
