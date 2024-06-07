// Color bloc
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repo/color_repo/i_color_repo.dart';
import 'color_event.dart';
import 'color_state.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  final IColorRepository colorRepository;

  ColorBloc(this.colorRepository)
      : super(ColorInitialState(colorRepository.getRandomColor())) {
    on<ChangeColorEvent>((event, emit) {
      emit(ColorChangedState(colorRepository.getRandomColor()));
    });

    on<InitializeColorEvent>((event, emit) {
      emit(ColorInitialState(colorRepository.getRandomColor()));
    });

    add(InitializeColorEvent()); // Generate start color for screen
  }

  void changeColor() {
    add(ChangeColorEvent());
  }
}
