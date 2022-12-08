import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../main.dart';
import 'home.dart';

class Auth_Middleware extends GetMiddleware{
  @override
  RouteSettings redirect(String route) {
   if (sharedpref.getString("email")!=sharedpref.getString("email") && sharedpref.getString("password")!=sharedpref.getString("password"))
     {
       return RouteSettings(name: "/login");
     }
   else
     {
     return RouteSettings(name: "/Home");

   }

  }
}