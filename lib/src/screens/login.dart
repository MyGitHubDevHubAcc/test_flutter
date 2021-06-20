import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_app/src/styles/base.dart';
import 'package:flutter_first_app/src/widgets/textfield.dart';
import 'dart:io';

import '../styles/textfields.dart';
import '../styles/colors.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoPageScaffold(
        child: pageBody(context),
      );
    } else {
      return Scaffold(
        body: pageBody(context),
      );
    }
  }

  Widget pageBody(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(0.0),
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * .2,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/top_bg.png'),
                  fit: BoxFit.fill)),
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/logo.png'),
            ),
          ),
        ),
        AppTextField(
          isIOS: Platform.isIOS,
          hintText: 'Email',
          cupertinoIcon: CupertinoIcons.mail_solid,
          materialIcon: Icons.email,
          textInputType: TextInputType.emailAddress,
        ),
        AppTextField(
          isIOS: Platform.isIOS,
          hintText: 'Password',
          cupertinoIcon: IconData(0xf4c9,
              fontFamily: CupertinoIcons.iconFont,
              fontPackage: CupertinoIcons.iconFontPackage),
          materialIcon: Icons.lock,
          obscureText: true,
        )
      ],
    );
  }

///////////This is refactored with the AppTextField Widget/////////
  // Widget email() {
  //   if (Platform.isIOS) {
  //     return CupertinoTextField(
  //       keyboardType: TextInputType.emailAddress,
  //       padding: EdgeInsets.all(12.0),
  //       placeholder: 'Email',
  //       placeholderStyle: TextFieldStyles.placeholder,
  //       style: TextFieldStyles.text,
  //       textAlign: TextFieldStyles.textAlign,
  //       cursorColor: TextFieldStyles.cursorColor,
  //       decoration: TextFieldStyles.cupertinoBoxDecoration,
  //       prefix: TextFieldStyles.iconPrefix(CupertinoIcons.mail_solid),
  //     );
  //   } else {
  //     return TextField(
  //       keyboardType: TextInputType.emailAddress,
  //       cursorColor: TextFieldStyles.cursorColor,
  //       style: TextFieldStyles.text,
  //       textAlign: TextFieldStyles.textAlign,
  //       decoration: TextFieldStyles.materialDecoration('Email', Icons.email),
  //     );
  //   }
  // }

  Widget password() {
    if (Platform.isIOS) {
      return CupertinoTextField();
    } else {
      return TextField();
    }
  }
}
