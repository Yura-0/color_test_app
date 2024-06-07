// Dependency injection
import 'package:get_it/get_it.dart';

import '../../blocs/color_bloc/color_bloc.dart';
import '../../repo/color_repo/color_repo.dart';
import '../../repo/color_repo/i_color_repo.dart';
import '../color_generate/color_generator.dart';
import '../color_generate/i_color_generator.dart';

final GetIt getIt = GetIt.instance;

void setup() {
  // Register utils
  getIt.registerLazySingleton<IColorGenerator>(() => ColorGenerator());

  // Register repos
  getIt.registerLazySingleton<IColorRepository>(
      () => ColorRepository(getIt<IColorGenerator>()));

  // Register blocs
  getIt.registerFactory<ColorBloc>(() => ColorBloc(getIt<IColorRepository>()));
}
