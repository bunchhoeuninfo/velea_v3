

import 'package:flutter/material.dart';

class VeleaTheme {
  static VeleaTheme of(BuildContext context) {
    return VeleaTheme();
  }

  Color get primaryBackground => Color(0xFFFFFFFF);
  Color get secondaryBackground => Color(0xFFEEEEEE);
  Color get appBarBackground => Color.fromARGB(255, 3, 49, 255);
  Color get appBarTextColor => Color(0xFFEEEEEE);
  Color get primaryColor => Color(0xFF6200EA);
  Color get secondaryColor => Color(0xFF03DAC6);

  TextStyle get displaySmall => TextStyle(
    fontFamily: 'Roboto',
    color: primaryColor,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );

  TextStyle get displayAppBar => TextStyle(
    fontFamily: 'KhmerOS-Regular',
    color: primaryColor,
    fontSize: 18,
    fontWeight: FontWeight.normal,
  );

  TextStyle get bodyMedium => TextStyle(
    fontFamily: 'Roboto',
    color: primaryColor,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );

  // Define your text styles
  TextStyle get headlineSmall => TextStyle(
    fontFamily: 'Roboto',
    color: primaryColor,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

   TextStyle get secondaryText => TextStyle(
    fontFamily: 'Roboto',
    color: secondaryColor,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  TextStyle get labelMedium => TextStyle(
    fontFamily: 'Roboto',
    color: primaryColor,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  TextStyle get titleMedium => TextStyle(
    fontFamily: 'Roboto',
    color: primaryColor,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  TextStyle get subtitleSmall => TextStyle(
    fontFamily: 'Roboto',
    color: primaryColor,
    fontSize: 9,
    fontWeight: FontWeight.normal,
    
  );

  TextStyle get title1 => TextStyle(
    fontFamily: 'Roboto',
    color: primaryColor,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  TextStyle get bodyText1 => TextStyle(
    fontFamily: 'Roboto',
    color: secondaryColor,
    fontSize: 16,
  );
}