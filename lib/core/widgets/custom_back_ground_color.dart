import 'package:flutter/material.dart';
import 'package:quiz_app/core/assets.dart';

class CustomBackGroundColor extends StatelessWidget {
  const CustomBackGroundColor({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xff060B26), Color(0xff1A1F37)],
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: Image.asset(Assets.gradinet, fit: BoxFit.fill),
          ),
          child
        ],
      ),
    );
  }
}
