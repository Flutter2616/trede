import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'appcolor.dart';

class AppTheme {
  // static MyAppTheme myAppTheme =MyAppTheme._();
  // MyAppTheme._();
  static ThemeData lightTheme = ThemeData(
      useMaterial3: false,
      appBarTheme: const AppBarTheme(
          backgroundColor: white, centerTitle: true, elevation: 1),
      backgroundColor: white,
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: white),
      cardColor: white,
      checkboxTheme: CheckboxThemeData(
          checkColor: MaterialStateColor.resolveWith((states) => white),
          fillColor: MaterialStateColor.resolveWith((states) => primary1)),
      dialogBackgroundColor: white,
      textTheme: TextTheme(
          bodyLarge: TextStyle(
              color: white, fontSize: 12.sp, fontWeight: FontWeight.w500),
          bodyMedium: TextStyle(
              color: white, fontSize: 15.sp, fontWeight: FontWeight.w400),
          bodySmall: TextStyle(
              color: white, fontSize: 18.sp, fontWeight: FontWeight.w400),
          titleLarge: TextStyle(
              color: mediumGray, fontSize: 12.sp, fontWeight: FontWeight.w600),
          titleMedium: TextStyle(
              color: mediumGray, fontSize: 16.sp, fontWeight: FontWeight.w600),
          titleSmall: TextStyle(
              color: mediumGray, fontSize: 20.sp, fontWeight: FontWeight.w600)),
      splashColor: mediumGray,
      scaffoldBackgroundColor: white);
}
