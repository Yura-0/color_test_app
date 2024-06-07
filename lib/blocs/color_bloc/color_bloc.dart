// Color bloc
import '../../repo/color_repo/i_color_repo.dart';
import 'color_event.dart';
import 'color_state.dart';
import 'i_color_bloc.dart';


class ColorBloc extends IColorBloc {
  final IColorRepository colorRepository;

  ColorBloc(this.colorRepository) : super(ColorInitialState(colorRepository.getRandomColor())) {
    on<ChangeColorEvent>((event, emit) {
      emit(ColorChangedState(colorRepository.getRandomColor()));
    });

    on<InitializeColorEvent>((event, emit) {
      emit(ColorInitialState(colorRepository.getRandomColor()));
    });

    add(InitializeColorEvent()); // Generate start color for screen
  }

  @override
  void changeColor() {
    add(ChangeColorEvent());
  }
}
