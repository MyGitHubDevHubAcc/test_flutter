import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_app/src/styles/base.dart';
import 'package:flutter_first_app/src/styles/colors.dart';
import 'package:flutter_first_app/src/styles/text.dart';

abstract class TextFieldStyles {
  static double get textBoxHorizontal => 25.0;

  static double get textBoxVertical => 8.0;

  static TextStyle get text => TextStyles.body;

  static TextStyle get placeholder => TextStyles.suggestion;

  static Color get cursorColor => AppColors.darkblue;

  static Widget iconPrefix(IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Icon(
        icon,
        size: 35.0,
        color: AppColors.lightblue,
      ),
    );
  }

  static BoxDecoration get cupertinoBoxDecoration {
    return BoxDecoration(
      border: Border.all(color: AppColors.straw, width: BaseStyles.boderWidth),
      borderRadius: BorderRadius.circular(BaseStyles.borderRadius),
    );
  }

  static TextAlign get textAlign => TextAlign.center;

  static InputDecoration materialDecoration(String hintText, IconData icon) {
    return InputDecoration(
      contentPadding: EdgeInsets.all(8.0),
      hintText: hintText,
      hintStyle: TextFieldStyles.placeholder,
      border: InputBorder.none,
      focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: AppColors.straw, width: BaseStyles.boderWidth),
          borderRadius: BorderRadius.circular(BaseStyles.borderRadius)),
      enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: AppColors.straw, width: BaseStyles.boderWidth),
          borderRadius: BorderRadius.circular(BaseStyles.borderRadius)),
      prefixIcon: iconPrefix(icon),
    );
  }
}
