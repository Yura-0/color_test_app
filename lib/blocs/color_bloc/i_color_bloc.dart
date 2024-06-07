// Interface for color bloc
import 'package:flutter_bloc/flutter_bloc.dart';

import 'color_event.dart';
import 'color_state.dart';

abstract class IColorBloc extends Bloc<ColorEvent, ColorState> {
  // Initial color state
  IColorBloc(ColorState initialState) : super(initialState);

  // Change color method
  void changeColor();
}