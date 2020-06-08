import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        questionText: 'Some cats are actually allergic to humans',
        questionsAnswer: true),
    Question(
        questionText: 'You can lead a cow down stairs but not up stairs.',
        questionsAnswer: false),
    Question(
        questionText:
            'Approximately one quarter of human bones are in the feet.',
        questionsAnswer: true),
    Question(questionText: 'A slug\'s blood is green.', questionsAnswer: true),
    Question(
        questionText: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
        questionsAnswer: true),
    Question(
        questionText: 'It is illegal to pee in the Ocean in Portugal.',
        questionsAnswer: true),
    Question(
        questionText:
            'No piece of square dry paper can be folded in half more than 7 times.',
        questionsAnswer: false),
    Question(
        questionText:
            'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        questionsAnswer: true),
    Question(
        questionText:
            'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        questionsAnswer: false),
    Question(
        questionText:
            'The total surface area of two human lungs is approximately 70 square metres.',
        questionsAnswer: true),
    Question(
        questionText: 'Google was originally called \"Backrub\".',
        questionsAnswer: true),
    Question(
        questionText:
            'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        questionsAnswer: true),
    Question(
        questionText:
            'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        questionsAnswer: true),
  ];

  void reset() => _questionNumber = 0;
  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber == _questionBank.length - 1)
      return true;
    else
      return false;
  }
}
