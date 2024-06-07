// Color bloc states
import '../../models/color_model/i_color_model.dart';

abstract class ColorState {
  final IColorModel color;

  ColorState(this.color);
}

// Color bloc initial states
class ColorInitialState extends ColorState {
  ColorInitialState(IColorModel color) : super(color);
}

// Color bloc changed states
class ColorChangedState extends ColorState {
  ColorChangedState(IColorModel color) : super(color);
}
