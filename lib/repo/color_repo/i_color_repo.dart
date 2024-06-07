// Interface for color repository
import '../../models/color_model/i_color_model.dart';

abstract class IColorRepository {
  // Get random color for view
  IColorModel getRandomColor();
}
