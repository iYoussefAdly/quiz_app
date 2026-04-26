import 'package:flutter/material.dart';
import 'package:quiz_app/presentation/views/widgets/quiz_view_body.dart';

class QuizView extends StatelessWidget {
  const QuizView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:QuizViewBody(),
    );
  }
}