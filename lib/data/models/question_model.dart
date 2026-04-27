import 'package:quiz_app/core/assets.dart';

class QuestionModel {
  final String questionImage;
  final String questionNumber;
  final String title;
  final List<String> choices;
  final List<String> correctAnswers;
  final bool isSingleChoice;

  QuestionModel({
    required this.questionImage,
    required this.questionNumber,
    required this.title,
    required this.choices,
    required this.correctAnswers,
    required this.isSingleChoice,
  });
}

List<QuestionModel> questions() {
  return [
    QuestionModel(
      questionImage: Assets.question1,
      questionNumber: 'Question 1',
      title:
          'Which of these are \nEuropean capital \ncities? (Select all \nthat apply)',
      choices: ['Paris', 'London', 'Berlin', 'Madrid'],
      correctAnswers: ['Paris', 'London', 'Berlin', 'Madrid'],
      isSingleChoice: false,
    ),
    QuestionModel(
      questionImage: Assets.question2,
      questionNumber: 'Question 2',
      title:
          'Which planet is the \nlargest in our solar \nsystem by diameter \nand mass?',
      choices: ['Saturn', 'Jupiter', 'Neptune', 'Earth'],
      correctAnswers: ['Jupiter'],
      isSingleChoice: true,
    ),
    QuestionModel(
      questionImage: Assets.question3,
      questionNumber: 'question 3',
      title:
          'In what year did the \nRMS Titanic sink in \nthe Atlantic Ocean \ndisaster?',
      choices: ['1912', '1915', '1920', '1905'],
      correctAnswers: ['1912'],
      isSingleChoice: true,
    ),
    QuestionModel(
      questionImage: Assets.question4,
      questionNumber: 'Question 4',
      title:
          'Which of the following \nare valid chemical \nsymbols? (Select all \nthat apply)',
      choices: ['Go', 'Au', 'Gd', 'Ga'],
      correctAnswers: ['Au', 'Gd', 'Ga'],
      isSingleChoice: false,
    ),
  ];
}
