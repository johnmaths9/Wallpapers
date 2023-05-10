import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/wallpaper_cubit.dart';
import '../untils/constants.dart';

class NotFoundIllustration extends StatelessWidget {
  const NotFoundIllustration({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 200,
          height: 300,
          child: Image.asset(notFoundIllustration),
        ),
        ElevatedButton(
          onPressed: () => context.read<WallpaperCubit>().getWallpapers(),
          child: const Text('Retry'),
        )
      ],
    );
  }
}
