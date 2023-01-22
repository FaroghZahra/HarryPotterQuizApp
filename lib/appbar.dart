import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  Size get preferredSize => const Size.fromHeight(60);

  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        'Harry Potter Quiz',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
      backgroundColor: Color.fromARGB(250, 129, 6, 92),
      foregroundColor: Color(0xffE7AB79),
    );
  }
}
