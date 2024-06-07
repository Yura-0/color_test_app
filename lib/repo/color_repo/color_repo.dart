// Color repository
import '../../models/color_model/i_color_model.dart';
import '../../utils/color_generate/i_color_generator.dart';
import 'i_color_repo.dart';

class ColorRepository implements IColorRepository {
  final IColorGenerator colorGenerator;

  ColorRepository(this.colorGenerator);

  // Get random color for view
  @override
  IColorModel getRandomColor() {
    return colorGenerator.generateRandomColor();
  }
}
