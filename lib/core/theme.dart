import 'package:bloc/core/app_pallet.dart';
import 'package:flutter/material.dart';

class AppTheme{
  static _border([Color color = AppPallete.borderColor]) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      width: 3,
      color: color
    ),

  );
 static final darkThemeMode = ThemeData.dark().copyWith(
   scaffoldBackgroundColor: AppPallete.backgroundColor,
   inputDecorationTheme: InputDecorationTheme(
     contentPadding: EdgeInsets.all(27.0),
     enabledBorder: _border(),
     focusedBorder: _border(AppPallete.gradient2)
   )
 );
}