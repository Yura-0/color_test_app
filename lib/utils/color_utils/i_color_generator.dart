// Interface for generating random color(ARGB)
import '../../models/color_model/i_color_model.dart';

abstract class IColorGenerator {
  IColorModel generateRandomColor();
}