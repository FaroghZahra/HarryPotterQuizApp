import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;
  Questions(this.questionText);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      
      child: Text(
        questionText + '\n\n',
        style: TextStyle(fontSize: 29, color: Color(0xffE7AB79)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
