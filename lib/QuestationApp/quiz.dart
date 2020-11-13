import 'package:flutter/material.dart';

import 'answer.dart';
import 'questation.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questation;
  final Function andwerQuestation;
  final Function onLognPress;
  final int questationIndex;

  Quiz({
    @required this.questation,
    @required this.andwerQuestation,
    @required this.onLognPress,
    @required this.questationIndex,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questation(questation[questationIndex]['questationText']),
        ...(questation[questationIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer( () => andwerQuestation(answer['score']) , onLognPress, answer['text']);
        }).toList(),
      ],
    );
  }
}
