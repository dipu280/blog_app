import 'package:block_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart' show BorderSide, EdgeInsets, InputDecorationTheme, OutlineInputBorder, ThemeData;
import 'package:flutter/widgets.dart';

class AppTheme{
  static _border([Color color=AppPallete.borderColor])=>OutlineInputBorder(
    borderSide: BorderSide(
        color:color,
        width: 3,
        style: BorderStyle.solid,
        
      ),
    borderRadius: BorderRadius.circular(20),
  );
static final darkThemeMode =ThemeData.dark ().copyWith(
  scaffoldBackgroundColor: AppPallete.backgroundColor,
   inputDecorationTheme:InputDecorationTheme(
    contentPadding: const EdgeInsets.all(27),
    enabledBorder: _border(),
    focusedBorder: _border(const Color.fromARGB(255, 80, 80, 80)),
   )
);
} 