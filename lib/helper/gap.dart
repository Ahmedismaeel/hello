import 'package:flutter/material.dart';
import 'package:hello/helper/responsive.dart';

Widget spaceX(double size) {
  return SizedBox(
    width: width(size),
  );
}

Widget spaceY(double size) {
  return SizedBox(
    height: height(size),
  );
}
