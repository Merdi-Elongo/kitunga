import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kitunga/utils/color.dart';

class TextInput extends StatelessWidget {

  final String labelText;
  final IconData icon;
  final TextEditingController controller;
  final EdgeInsets margin;

  TextInput({this.controller, this.labelText, this.icon, this.margin});

  @override
  Widget build(BuildContext context) {
      return Container(
        margin: (margin) != null ? margin : EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white
        ),
        padding: EdgeInsets.only(left: 10),
        child: TextFormField(
          controller: this.controller,
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 1),
                borderRadius: BorderRadius.circular(20.0),
              ),
              border: InputBorder.none,
              labelText: this.labelText,
              prefixIcon: Icon(this.icon),
              contentPadding: EdgeInsets.only(top: 17)
          ),
        ),
      );
    }
  }
