import 'package:flutter/material.dart';
import 'package:quiz_app/core/styles.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, required this.onTap});
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: const Color(0xFF8D83FF)),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.arrow_back_ios, size: 19, color: Colors.white),
            SizedBox(width: 8),
            Text('Back', style: Styles.font16Medium.copyWith(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
