import 'package:flutter/material.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, 1.00),
          end: Alignment(1.00, 0.17),
          colors: [const Color(0xFFB8B2FF), const Color(0xFFC6C2F7)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        children: [
          Container(
            width: 19,
            padding: const EdgeInsets.all(5),
            decoration: ShapeDecoration(
              color: const Color(0xFF2B0062) /* MAINE-VIOLET */,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9.50),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 10,
              children: [],
            ),
          ),
          Text(
            'Strongly satisfied',
            style: TextStyle(
              color: const Color(0xFF2B0062) /* MAINE-VIOLET */,
              fontSize: 16,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
