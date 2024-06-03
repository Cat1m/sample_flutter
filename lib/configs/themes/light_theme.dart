import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_flutter/configs/color/color.dart';

import 'themes.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
    ),
    actionsIconTheme: IconThemeData(
      color: AppColors.black,
    ),
  ),
  textSelectionTheme:
      const TextSelectionThemeData(cursorColor: AppColors.black),
  textTheme: ThemeData.dark().textTheme.copyWith(
        titleMedium: GoogleFonts.roboto(color: AppColors.black),
        titleSmall: GoogleFonts.roboto(
          color: AppColors.black.withOpacity(.5),
        ),
        displayLarge: GoogleFonts.roboto(
          color: AppColors.black,
        ),
        displayMedium: GoogleFonts.roboto(
          color: AppColors.black,
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: GoogleFonts.roboto(color: ThemeConfig.textColorBlack),
        displaySmall: GoogleFonts.roboto(
          color: AppColors.black,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: GoogleFonts.roboto(
          color: ThemeConfig.textColorBlack,
        ),
      ),
  radioTheme: RadioThemeData(
    fillColor: WidgetStateColor.resolveWith(
        (states) => AppColors.black.withOpacity(.4)),
  ),
  colorScheme: ThemeData.light().colorScheme.copyWith(
        secondary: AppColors.lightPurple,
        primary: AppColors.white,
        onPrimary: AppColors.lightWhite,
        outline: AppColors.black,
        surface: AppColors.lightWhite,
        onSurface: AppColors.lightWhite,
        primaryContainer: AppColors.lightWhitePink,
        onPrimaryContainer: AppColors.lightWhitePurple,
      ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    linearTrackColor: AppColors.white,
    color: AppColors.lightPurple,
  ),
  primaryColor: AppColors.lightWhite,
  scaffoldBackgroundColor: AppColors.white,
);
