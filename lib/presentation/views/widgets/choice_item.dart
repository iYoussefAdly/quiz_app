import 'package:flutter/material.dart';
import 'package:quiz_app/core/styles.dart';
class ChoiceItem extends StatelessWidget {
  const ChoiceItem({super.key, required this.choice});
  final String choice;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 16,
        children: [
          Container(
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
            choice,
            style: Styles.font16Medium.copyWith(color: Color(0xff2B0062)),
          ),
        ],
      ),
    );
  }
}
