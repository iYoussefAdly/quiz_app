import 'package:flutter/material.dart';
import 'package:quiz_app/presentation/views/widgets/custom_back_ground_color.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackGroundColor(
        child: Column(
          children: [
            Text(
              'Good morning,',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
