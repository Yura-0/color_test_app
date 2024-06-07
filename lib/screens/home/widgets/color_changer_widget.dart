// Color changer widget
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/color_bloc/color_bloc.dart';
import '../../../blocs/color_bloc/color_event.dart';
import '../../../blocs/color_bloc/color_state.dart';

class ColorChangerWidget extends StatelessWidget {
  const ColorChangerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc, ColorState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context.read<ColorBloc>().add(ChangeColorEvent());
          },
          child: Container(
            color: state.color.toColor(),
          ),
        );
      },
    );
  }
}
