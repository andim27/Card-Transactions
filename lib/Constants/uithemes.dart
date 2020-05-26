import 'package:flutter/material.dart';

class UIThemes {

  static ThemeData mainTheme = ThemeData(
    fontFamily: "SF Pro Display",
    scaffoldBackgroundColor: Colors.white,
  );

  static const black = Color(0xFF000000);
  static const transparent = Color(0x00000000);
  static const primaryColor = Color(0xff4a4fed);
  static const primaryContrastingColor = backgroundColor;
  static const backgroundColor = Color(0xFFffffff);
  static const backgroundHalfContrastingColor = Color(0xFFc3c3c7);
  static const backgroundContrastingColor = Color(0xFF242a42);
  static const accentColor = Color(0xFF43cea2);
  static const accentColorShadow = Color(0x8031c77f);
  static const backgroundSecondaryColor = Color(0xFF757d9c);


  static const buttonPrimaryColor = Color(0xff43cea2);
  static const buttonSecondaryColor = Color(0xff8f99bf);
  static const loginTextColor = Color(0xff242a42); // TODO реальный цвет с авокода, но он не подошел из-за фона
  static const menuBgColorStart = Color.fromRGBO(17, 28, 95, 1.0);
  static const menuBgColorEnd = Color.fromRGBO(2, 9, 53, 1.0);
  static const pinLoginColor = Color.fromRGBO(165, 172, 218, 1.0);
  static const buttonBackgroundColor = Color(0xFFe3e3ec);
  static const errorColor = Color(0xFFea568a);


  static const darkShadowColor = Color(0x474f6eff);
  static const buttonPrimaryShadowColor = Color (0x0033ffff);

  static const submitButtonColor = Color(0xff2a2ecc);
  static const submitButtonShadeColor = Color(0x800033ff);


  // common
  static TextStyle pageTitleTextStyle() => TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  static TextStyle button16TextStyle() => TextStyle(
    color: Colors.white,
    fontSize: 16.0,
  );

  static TextStyle button12TextStyle() => TextStyle(
    color: Colors.white,
    fontSize: 12.0,
  );
  

  // normal
  static TextStyle normal20TextStyle() => TextStyle(
    color: Colors.black,
    fontSize: 20.0,
  );

  static TextStyle normal16TextStyle() => TextStyle(
    color: Colors.black,
    fontSize: 16.0,
  );

  static TextStyle normal14TextStyle() => TextStyle(
    color: Colors.black,
    fontSize: 14.0,
  );

  static TextStyle normal12TextStyle() => TextStyle(
    color: Colors.black,
    fontSize: 12.0,
  );


  // Bank cards number
  static TextStyle bankCardNumberTextStyle() => TextStyle(
    color: Colors.white,
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
  );

  // Bank cards name
  static TextStyle bankCardUserNameTextStyle() => TextStyle(
    color: Colors.white,
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
  );

  // Bank cards controls text details
  static TextStyle bankCardControlsDetailsTextStyle() => TextStyle(
    color: Colors.grey,
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
  );
}
