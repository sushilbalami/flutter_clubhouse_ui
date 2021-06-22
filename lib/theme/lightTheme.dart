import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final Color _lightThemeColor = Color(0xffD0CEC4);
final Color _appBarIconColor = Color(0xff010100);

ThemeData lightTheme = ThemeData.light().copyWith(
  primaryColor: _lightThemeColor,
  scaffoldBackgroundColor: _lightThemeColor,
  backgroundColor: _lightThemeColor,
  appBarTheme: AppBarTheme(
    color: _lightThemeColor,
    elevation: 0,
    titleTextStyle: GoogleFonts.nunito(
      color: Color(0xff1E1E1E),
      fontWeight: FontWeight.w600,
      fontSize: 18,
      letterSpacing: 0.2,
    ),
    iconTheme: IconThemeData(
      color: _appBarIconColor,
    ),
  ),
  textTheme: _textTheme,
  primaryTextTheme: _textTheme,
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      overlayColor: MaterialStateProperty.all(
        Color(0xffbfbcac),
      ),
    ),
  ),
);

TextTheme _textTheme = TextTheme(
  headline5: GoogleFonts.nunito(
    color: Color(0xff1E1E1E),
  ),
  headline6: GoogleFonts.nunito(
    color: Color(0xff1E1E1E),
  ),
  subtitle1: GoogleFonts.nunito(
    color: Color(0xff1E1E1E),
    fontWeight: FontWeight.w600,
    letterSpacing: 1,
    fontSize: 12,
  ),
  subtitle2: GoogleFonts.nunito(
    color: Color(0xff1E1E1E),
    fontSize: 14,
    fontWeight: FontWeight.bold,
  ),
);
