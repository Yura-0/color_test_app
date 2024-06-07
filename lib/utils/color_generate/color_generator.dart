// Random color generator(ARGB)
import 'dart:math';

import '../../models/color_model/color_model.dart';
import '../../models/color_model/i_color_model.dart';
import 'i_color_generator.dart';

class ColorGenerator implements IColorGenerator {
  static final Random _random = Random();

  @override
  IColorModel generateRandomColor() {
    return ColorModel(
      alpha:
          255, // In this interpretation, the alpha parameter is always equal to 255
      red: _random.nextInt(256),
      green: _random.nextInt(256),
      blue: _random.nextInt(256),
    );
  }
}
