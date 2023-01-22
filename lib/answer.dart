import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  
  final Function() selecthandler;
  final String AnswerText;
  Answers(this.selecthandler, this.AnswerText,);
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(100.0),
            ),
            primary: Color.fromARGB(177, 124, 7, 61),
          ),
          onPressed: selecthandler,
          child: Text(
            AnswerText,
            style: TextStyle(fontSize: 20, color: Color(0xffE7AB79)),
          ),
        ));
  }
}
