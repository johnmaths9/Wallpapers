import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_app/screens/wallpaper_screen.dart';
import 'package:wallpaper_app/untils/constants.dart';

import 'cubit/wallpaper_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WallpaperCubit()..getWallpapers(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        title: 'Wall Print',
        home: const WallpaperScreen(),
      ),
    );
  }
}
