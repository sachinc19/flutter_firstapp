import 'package:flutter/widgets.dart';
import './question.dart';
import './answer.dart';

class Quize extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answeQuestion;
  
  Quize({@required this.questions,@required this.answeQuestion,@required this.questionIndex});
 
  @override
  Widget build(BuildContext context) {
    
      return Column(children: [
      Question(questions[questionIndex]['questionText']),
      ...(questions[questionIndex]['answer'] as List).map((answer) {
        return Answer(answeQuestion, answer);
      }).toList()
    ]);
    
  }
}
