import 'package:quiz_app/core/assets.dart';

class QuestionModel {
  final String questionImage;
  final String questionNumber;
  final String title;
  final List<String> choices;
  final List<String> correctAnswers;

  QuestionModel({
    required this.questionImage,
    required this.questionNumber,
    required this.title,
    required this.choices,
    required this.correctAnswers,
  });
}

List<QuestionModel> questions() {
  return [
    QuestionModel(
      questionImage: Assets.question1,
      questionNumber: 'Question 1',
      title:
          'What is the capital \nof France located \nin Western Europe \ntoday?',
      choices: ['Paris', 'London', 'Berlin', 'Madrid'],
      correctAnswers: ['Paris'],
    ),
    QuestionModel(
      questionImage: Assets.question2,
      questionNumber: 'Question 2',
      title:
          'Which planet is the \nlargest in our solar \nsystem by diameter \nand mass?',
      choices: ['Saturn', 'Jupiter', 'Neptune', 'Earth'],
      correctAnswers: ['Jupiter'],
    ),
    QuestionModel(
      questionImage: Assets.question3,
      questionNumber: 'Question 3',
      title:
          'What is the correct \nchemical symbol for \nthe precious metal \ngold?',
      choices: ['Go', 'Au', 'Gd', 'Ga'],
      correctAnswers: ['Au'],
    ),
    QuestionModel(
      questionImage: Assets.question4,
      questionNumber: 'question 4',
      title:
          'In what year did the \nRMS Titanic sink in \nthe Atlantic Ocean \ndisaster?',
      choices: ['1912', '1915', '1920', '1905'],
      correctAnswers: ['1912'],
    ),
  ];
}
