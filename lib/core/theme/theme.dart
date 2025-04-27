import 'package:block_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart' show BorderRadius, BorderSide, InputDecorationTheme, OutlineInputBorder, ThemeData;

class AppTheme{
static final darkThemeMode =ThemeData.dark ().copyWith(
  scaffoldBackgroundColor: AppPallete.backgroundColor,
   inputDecorationTheme:InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: AppPallete.borderColor,
        width: 3
      ),
      borderRadius: BorderRadius.circular(5),
    ),
   )
);
} 