import 'package:flutter/material.dart';

import './restart.dart';

class Result extends StatelessWidget {
  final int score;
  final Function() reset;
  Result(this.score, this.reset);

  String get resultPhrase {
    String resultText;
    if (score == 10) {
      resultText = 'Congratulations! \n You are a Pure Blood';
    } else if (score < 10 && score >= 5) {
      resultText = 'You are a Half Blood';
    } else {
      resultText = 'You are a Muggle';
    }
    return resultText;
  }

  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Expanded(child:    Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/castle-2.jpg"),
            fit: BoxFit.cover,
            alignment: Alignment.center,
          )),
          child: Column(
            children: <Widget>[
              Text(
                '\nYou scored : ' + score.toString() + '\n\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  color: Color(0xffE7AB79),
                ),
              ),
              Text(
                resultPhrase + '\n\n\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 48,
                  color: Color(0xffE7AB79),
                ),
              ),
              Restart(reset),
            ],
          ),
        ),)
     
      ],
    ));
  }
}
