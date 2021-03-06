import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_app/src/routes.dart';
import 'package:flutter_first_app/src/screens/login.dart';
import 'dart:io';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformApp();
  }
}

class PlatformApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if(Platform.isIOS){
      return CupertinoApp(
        home: Login(),
        onGenerateRoute: Routes.cupertinoRoutes,
        theme: CupertinoThemeData( 
          scaffoldBackgroundColor: Colors.white
        )
      );
    }
    else {
      return MaterialApp (
        home: Login(),
        onGenerateRoute: Routes.materialRoutes,
        theme: ThemeData (scaffoldBackgroundColor: Colors.white),
      );
    }
  }
}