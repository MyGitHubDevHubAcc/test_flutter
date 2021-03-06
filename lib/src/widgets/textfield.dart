import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_app/src/styles/textfields.dart';

class AppTextField extends StatelessWidget {
  final bool isIOS;
  final String hintText;
  final IconData cupertinoIcon;
  final IconData materialIcon;
  final TextInputType textInputType;
  final bool obscureText;

  AppTextField(
      {@required this.isIOS,
      @required this.hintText,
      @required this.cupertinoIcon,
      @required this.materialIcon,
      this.textInputType,
      this.obscureText});

  @override
  Widget build(BuildContext context) {
    if (isIOS) {
      return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: TextFieldStyles.textBoxHorizontal,
            vertical: TextFieldStyles.textBoxVertical),
        child: CupertinoTextField(
          keyboardType:
              (textInputType != null ? textInputType : TextInputType.text),
          padding: EdgeInsets.all(12.0),
          placeholder: hintText,
          placeholderStyle: TextFieldStyles.placeholder,
          style: TextFieldStyles.text,
          textAlign: TextFieldStyles.textAlign,
          cursorColor: TextFieldStyles.cursorColor,
          decoration: TextFieldStyles.cupertinoBoxDecoration,
          prefix: TextFieldStyles.iconPrefix(cupertinoIcon),
          obscureText: (obscureText != null ? obscureText : false),
        ),
      );
    } else {
      return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: TextFieldStyles.textBoxHorizontal,
            vertical: TextFieldStyles.textBoxVertical),
        child: TextField(
          keyboardType:
              (textInputType != null ? textInputType : TextInputType.text),
          cursorColor: TextFieldStyles.cursorColor,
          style: TextFieldStyles.text,
          textAlign: TextFieldStyles.textAlign,
          decoration:
              TextFieldStyles.materialDecoration(hintText, materialIcon),
          obscureText: (obscureText != null ? obscureText : false),
        ),
      );
    }
  }
}
