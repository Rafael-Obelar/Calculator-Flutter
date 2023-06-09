import 'package:flutter/material.dart';

class Display extends StatelessWidget {

  final String text;

  Display(this.text);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Color.fromRGBO(80, 80, 80, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.all(8.0),
   
              child: Text(text),
            )
            ],
        ),
      ),
    );
  }
}
