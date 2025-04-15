import 'package:flutter/material.dart';

class Question
    extends
        StatefulWidget {
  const Question({
    super.key,
  });

  @override
  State<Question>
  createState() {
    return _QuestionState();
  }
}

class _QuestionState
    extends
        State<
          Question
        > {
  String
  userAnswer = "";
  int correct = 0;
  int wrong = 0;
  String result =
      "❓";

  void answer(
    String answer,
  ) {
    setState(() {
      userAnswer =
          answer;

      if (answer ==
          'yes') {
        correct++;
        result =
            '✅ Correct';
      } else {
        wrong++;
        result =
            '❌ Wrong';
      }
    });
  }

  void reset() {
   setState(() {
      userAnswer = '';
    correct = 0;
    wrong = 0;
    result =
      "❓";
   });
  }

  @override
  Widget build(
    BuildContext
    context,
  ) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Is Flutter developed by Google?',
            style: TextStyle(
              fontSize:
                  20,
              fontWeight:
                  FontWeight.bold,
            ),
          ),
          SizedBox(
            height:
                25,
          ),
          OutlinedButton.icon(
            
            style: OutlinedButton.styleFrom(
              backgroundColor:
                  Colors.black87),
            onPressed: () {
              answer(
                'yes',
              );
            },
            label: Text(
              'A: Yes',
              style: TextStyle(
                color:
                    Colors.white,
              ),
            ),
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              backgroundColor:
                  Colors.black87),
            onPressed: () {
              answer(
                'no',
              );
            },
            label: Text(
              'B: No',
              style: TextStyle(
                color:
                    Colors.white,
              ),
            ),
          ),
          SizedBox(
            height:
                25,
          ),
          Text(
            result,
            style: TextStyle(
              fontSize:
                  25,
            ),
          ),
          SizedBox(
            height:
                25,
          ),
          Text(
            "Correct: $correct",
          ),
          Text(
            "Wrong: $wrong",
          ),
          SizedBox(
            height:
                15,
          ),
          OutlinedButton(
            onPressed:
                (){reset();},
            child: Text(
              'Reset',
              style: TextStyle(
                color:
                    Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
