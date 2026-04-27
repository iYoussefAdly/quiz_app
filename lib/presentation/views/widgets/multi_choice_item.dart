import 'package:flutter/material.dart';
import 'package:quiz_app/core/assets.dart';
import 'package:quiz_app/core/styles.dart';
import 'package:svg_flutter/svg.dart';

class MultiChoiceItem extends StatefulWidget {
  const MultiChoiceItem({super.key, required this.choice});
  final String choice;
  @override
  State<MultiChoiceItem> createState() => _MultiChoiceItemState();
}

class _MultiChoiceItemState extends State<MultiChoiceItem>
    with AutomaticKeepAliveClientMixin {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        decoration: ShapeDecoration(
          color: isSelected ? Color(0xffBBB6F1) : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 16,
          children: [
            isSelected
                ? SvgPicture.asset(Assets.frame1)
                : Container(
                    width: 19,
                    height: 19,
                    decoration: ShapeDecoration(
                      shape: CircleBorder(
                        side: BorderSide(
                          width: 1,
                          color: const Color(0xFF2B0062) /* MAINE-VIOLET */,
                        ),
                      ),
                    ),
                  ),
            Text(
              widget.choice,
              style: Styles.font16Medium.copyWith(color: Color(0xff2B0062)),
            ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
