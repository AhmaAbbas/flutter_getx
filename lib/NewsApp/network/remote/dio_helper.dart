import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class Dio_Helper {
 static  Dio dio;
 static inint(){
   dio=Dio(
     BaseOptions(
       baseUrl: "https://newsapi.org/",
       receiveDataWhenStatusError: true,
     )
   );
 }
  static Future<Response> dio_getdata({@required String path,@required Map<String,dynamic> query })async{
   return await dio.get(path,queryParameters: query);
 }
}