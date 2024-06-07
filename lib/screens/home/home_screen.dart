import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/color_bloc/color_bloc.dart';
import '../../utils/di/injector.dart';
import 'widgets/color_changer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => getIt.get<ColorBloc>(),
        child: const ColorChangerWidget(),
      ),
    );
  }
}
