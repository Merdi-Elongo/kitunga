import 'dart:async';

import 'package:flutter/material.dart';

class ButtonInput extends StatelessWidget {
  String text;
  IconData icon;
  ControllerCallback onPressed;
  Color color;
  Color background;
  double width;
  EdgeInsets margin;

  ButtonInput({text, icon, onPressed, color, width, margin, background}) {
    this.onPressed = onPressed;
    this.color = color;
    this.icon = icon;
    this.text = text;
    this.width = width;
    this.margin = margin;
    this.background = background;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: (margin) != null ? margin : EdgeInsets.only(top: 10),
      child: SizedBox(
        width: (width) != null ? width : MediaQuery.of(context).size.width * 0.5,
        child: ElevatedButton(
          onPressed: this.onPressed,
          child: Text(
            this.text,
            style: TextStyle(
                fontSize: 14,
                color: color,
                fontWeight: FontWeight.bold
            ),
          ),
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
            foregroundColor: MaterialStateProperty.all<Color>(background),
            backgroundColor: MaterialStateProperty.all<Color>(background),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(60)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
