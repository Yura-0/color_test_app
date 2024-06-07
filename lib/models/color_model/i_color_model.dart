// Interface for color model(ARGB)
import 'package:flutter/material.dart';

abstract class IColorModel {
  int get alpha;
  int get red;
  int get green;
  int get blue;

  // Color return method
  Color toColor();
}
