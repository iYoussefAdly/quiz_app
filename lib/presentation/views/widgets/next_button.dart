import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:quiz_app/core/styles.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: ShapeDecoration(
        color: const Color(0xFF8D83FF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Next', style: Styles.font16Medium.copyWith(color: Colors.white)),
          SizedBox(width: 11),
          Transform.rotate(
            angle: math.pi,
            child: Icon(Icons.arrow_back_ios, size: 19,color: Colors.white,),
          ),
        ],
      ),
    );
  }
}
