import 'dart:math';
import 'package:flutter/material.dart';

colorGenerator() {
  final random = Random();
  var color = Color.fromRGBO(
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
    1,
  );
  return color;
}
