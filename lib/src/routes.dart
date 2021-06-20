
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_app/src/screens/landing.dart';
import 'package:flutter_first_app/src/screens/login.dart';
import 'package:flutter_first_app/src/screens/signup.dart';

abstract class Routes {

static MaterialPageRoute materialRoutes(RouteSettings setting){
  switch(setting.name){
    case "/":
    return MaterialPageRoute(builder: (context) => Landing());

    case "/signup":
    return MaterialPageRoute(builder: (context) => Signup());

    case "/login":
    return MaterialPageRoute(builder: (context) => Login());

    default: 
    return MaterialPageRoute(builder: (context) => Login()); 
  }
}

static CupertinoPageRoute cupertinoRoutes(RouteSettings setting){
  switch(setting.name){
    case "/":
    return CupertinoPageRoute(builder: (context) => Landing());
  
    case "/signup":
    return CupertinoPageRoute(builder: (context) => Signup());
   
    case "/login":
    return CupertinoPageRoute(builder: (context) => Login());
  
    default: 
    return CupertinoPageRoute(builder: (context) => Login()); 
    
  }
}
}