import 'package:flutter/material.dart';

initCallback(Function function) {
  WidgetsBinding.instance.addPostFrameCallback((_) => function());
}
