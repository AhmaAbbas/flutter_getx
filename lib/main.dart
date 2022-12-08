import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_getx/NewsApp/network/remote/dio_helper.dart';
import 'package:get/get.dart';
import 'NewsApp/layouts/Layout.dart';
void main() async{
  Dio_Helper.inint();

  runApp(GetMaterialApp(
    theme: ThemeData(
      appBarTheme: AppBarTheme(
        backwardsCompatibility: false,
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(color: Colors.black),
        elevation: 0.0,
      ),
    ),
    darkTheme: ThemeData(
      scaffoldBackgroundColor: Colors.black
    ),
    debugShowCheckedModeBanner: false,
    home: HomeLayout(),
  ));
}
