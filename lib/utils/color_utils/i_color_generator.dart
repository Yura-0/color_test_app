// Interface for generating random color(ARGB)
import '../../models/color_model/i_color_model.dart';

abstract class IColorGenerator {
  // Generate random color
  IColorModel generateRandomColor();
}