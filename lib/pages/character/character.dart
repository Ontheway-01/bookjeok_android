import 'package:flutter/material.dart';

class Character{
  final String name;
  final Image image;
  final String height;
  final String date;

  const Character(@required this.name,@required this.image, @required this.height, @required this.date);
}