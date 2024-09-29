import 'package:flutter/material.dart';
import 'package:navigation/ui/colors.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primaryLightColor,
    surface: AppColors.secondaryColor,
    brightness: Brightness.light,
  ),
  useMaterial3: true,
  fontFamily: 'Quicksand',
  textTheme: ThemeData.light().textTheme.copyWith(
        titleLarge: const TextStyle(
            fontFamily: 'Roboto',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black),
        labelLarge: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primaryDarkColor,
    secondary: AppColors.secondaryColor,
    brightness: Brightness.dark,
  ),
  useMaterial3: true,
  fontFamily: 'Quicksand',
  textTheme: ThemeData.dark().textTheme.copyWith(
        titleLarge: const TextStyle(
            fontFamily: 'Roboto',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black),
        labelLarge: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
);
