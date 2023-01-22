import 'package:flutter/material.dart';

class Restart extends StatelessWidget {
    final Function() handleit;
    Restart(this.handleit);

    Widget build(BuildContext context) {
      return OutlinedButton(onPressed: handleit, 
       style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            side: MaterialStateProperty.all(
              BorderSide(
                color: Color.fromARGB(250, 129, 6, 92),
                width: 10.0,
              ),
            ),
          ),
          child: Text("restart",
              style: TextStyle(
                fontSize: 40.0,
                color: Color(0xffE7AB79),
              )),
        );
    }
}