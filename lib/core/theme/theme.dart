import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

ThemeData getAppTheme() {
  return ThemeData(
    //scaffold theme
    scaffoldBackgroundColor: AppColors.white,
    //appBar theme
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
      elevation: 0,
    ),
    
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: AppColors.primary),
    ),
    //text field
    inputDecorationTheme: InputDecorationTheme(
      //enabled border
      enabledBorder: OutlineInputBorder(
        
        borderRadius: BorderRadius.circular(8)),
      //fouced border
      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      //error border
      errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      //hint
      hintStyle: CustomTextStyle.peralta400secondary24,
      
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(AppColors.primary),
        // textStyle: MaterialStateProperty.all(
        //   boldStyle(color: AppColors.white, fontSize: 16),
        // ), 
      ),
    ),
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.red
      )
  );
}
