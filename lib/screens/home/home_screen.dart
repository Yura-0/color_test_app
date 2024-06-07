import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/color_bloc/color_bloc.dart';
import '../../repo/color_repo/color_repo.dart';
import '../../utils/color_utils/color_generator.dart';
import 'widgets/color_changer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => ColorBloc(ColorRepository(ColorGenerator())),
        child: const ColorChangerWidget(),
      ),
    );
  }
}
