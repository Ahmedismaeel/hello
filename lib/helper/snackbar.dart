import 'package:flutter/material.dart';

smallSnackBar(BuildContext context, String text, Color color, int time) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: color,
    duration: Duration(seconds: time),
    content: Text(
      text,
      textAlign: TextAlign.center,
    ),
    behavior: SnackBarBehavior.floating,
  ));
}
