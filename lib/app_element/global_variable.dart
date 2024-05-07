import 'package:flutter/material.dart';
import 'package:moneytomoney/app_element/appcolor.dart';
import 'package:sizer/sizer.dart';

TextStyle textFieldStyle({Color? textColor}) {
  return TextStyle(
      color: textColor == null ? black : textColor,
      fontSize: 3.5.sp,
      fontWeight: FontWeight.w500);
}
// font size 10

Text title10w600({required String text, Color? textColor}) {
  return Text(
    "${text}",
    style: TextStyle(
        color: textColor == null ? black : textColor,
        fontSize: 2.5.sp,
        fontWeight: FontWeight.w600),
  );
}

Text body10w400({required String text, Color? textColor}) {
  return Text(
    "${text}",
    style: TextStyle(
        color: textColor == null ? black : textColor,
        fontSize: 2.5.sp,
        fontWeight: FontWeight.w400),
  );
}

// font size 12

Text title12w600({required String text, Color? textColor}) {
  return Text(
    "${text}",
    style: TextStyle(
        color: textColor == null ? black : textColor,
        fontSize: 3.sp,
        fontWeight: FontWeight.w600),
  );
}

Text body12w400({required String text, Color? textColor}) {
  return Text(
    "${text}",
    style: TextStyle(
        color: textColor == null ? black : textColor,
        fontSize: 3.sp,
        fontWeight: FontWeight.w400),
  );
}

// font size 15

Text title15w600({required String text, Color? textColor}) {
  return Text(
    "${text}",
    style: TextStyle(
        color: textColor == null ? black : textColor,
        fontSize: 3.5.sp,
        fontWeight: FontWeight.w600),
  );
}

Text body15w400({required String text, Color? textColor}) {
  return Text(
    "${text}",
    style: TextStyle(
        color: textColor == null ? black : textColor,
        fontSize: 3.5.sp,
        fontWeight: FontWeight.w400),
  );
}

// font size 18

Text title18w600({required String text, Color? textColor}) {
  return Text(
    "${text}",
    style: TextStyle(
        color: textColor == null ? black : textColor,
        fontSize: 5.sp,
        fontWeight: FontWeight.w600),
  );
}

Text body18w400({required String text, Color? textColor}) {
  return Text(
    "${text}",
    style: TextStyle(
        color: textColor == null ? black : textColor,
        fontSize: 5.sp,
        fontWeight: FontWeight.w400),
  );
}

///=-=-=-=-=-=-=-Padding-=-=-=-=-=-=--=

Widget height(double value) {
  return SizedBox(height: value);
}

Widget width(double value) {
  return SizedBox(width: value);
}