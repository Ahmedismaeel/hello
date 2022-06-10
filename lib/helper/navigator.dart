import 'package:flutter/material.dart';

void toScreen(BuildContext context, Widget screen) {
  Navigator.of(context).push(MaterialPageRoute(builder: (_) => screen));
}

void toMainScreen(BuildContext context, Widget screen) {
  // Navigator.of(context)
  //     .pushReplacement (MaterialPageRoute(builder: (_) => screen));
  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => screen), (route) => false);
}
