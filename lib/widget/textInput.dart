import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kitunga/utils/color.dart';

class TextInput extends StatelessWidget {

  String hint;
  IconData icon;
  ControllerCallback controller;

  TextInput({hint, icon, controller}) {
    this.controller = controller;
    this.icon = icon;
    this.hint = hint;
  }

  @override
  Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white
        ),
        padding: EdgeInsets.only(left: 10),
        child: TextFormField(
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: blue, width: 1),
                borderRadius: BorderRadius.circular(20.0),
              ),
              border: InputBorder.none,
              hintText: hint,
              prefixIcon: Icon(icon),
              contentPadding: EdgeInsets.only(top: 17)
          ),
        ),
      );
    }
  }
