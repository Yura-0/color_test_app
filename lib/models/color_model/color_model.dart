// Color model(ARGB)
import 'package:flutter/material.dart';
import 'i_color_model.dart';

class ColorModel implements IColorModel {
  @override
  final int alpha;
  @override
  final int red;
  @override
  final int green;
  @override
  final int blue;

  ColorModel({required this.alpha, required this.red, required this.green, required this.blue});

  @override
  Color toColor() {
    return Color.fromARGB(alpha, red, green, blue);
  }
}
