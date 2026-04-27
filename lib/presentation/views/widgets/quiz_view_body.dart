import 'package:flutter/material.dart';
import 'package:quiz_app/core/widgets/custom_back_ground_color.dart';
import 'package:quiz_app/data/models/question_model.dart';
import 'package:quiz_app/presentation/views/widgets/action_buttons.dart';
import 'package:quiz_app/presentation/views/widgets/qustion_item.dart';

class QuizViewBody extends StatefulWidget {
  const QuizViewBody({super.key});

  @override
  State<QuizViewBody> createState() => _QuizViewBodyState();
}

class _QuizViewBodyState extends State<QuizViewBody> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundColor(
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: questions().length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: QustionItem(question: questions()[index]),
                  ),
                ),
              ),
              ActionButtons(
                onBack: () {
                  if (_pageController.page! > 0) {
                    _pageController.previousPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                onNext: () {
                  if (_pageController.page! < questions().length - 1) {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
              ),
              SizedBox(height: 33),
            ],
          ),
        ),
      ),
    );
  }
}
