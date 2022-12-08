import 'package:flutter/cupertino.dart';
import 'package:flutter_getx/NewsApp/network/remote/dio_helper.dart';
import 'package:flutter_getx/NewsApp/view/Science/science_screen.dart';
import 'package:flutter_getx/NewsApp/view/business/business_Screen.dart';
import 'package:flutter_getx/NewsApp/view/setting/setting_screen.dart';
import 'package:flutter_getx/NewsApp/view/sports/sports_screen.dart';
import 'package:get/get.dart';

class NewsLAyout_Controller extends GetxController{
  @override
  void onInit() {
    super.onInit();
    get_data_business();
     //get_data_sports();
    // get_data_Science();
  }
  List<dynamic> bussinse=[];
  //List<dynamic> sports=[];
  // List<dynamic> science=[];
  int current_index=0;
  List<Widget> Screens=[
    Buiseness(),
    Science(),
    Sports(),
   // Settings()
  ];
  void get_data_business()
  {
    Dio_Helper.dio_getdata(path: "v2/everything", query: {
    "q":"apple",
    "from":"2022-04-14",
      "to":"2022-04-14",
      "sortBy":"popularity",
      "apiKey":"b8e5ed6a8b0f472abd92c1ab46958e8f",}).then((value) {
      bussinse=value.data["articles"];
      update();
      print(bussinse[1]["title"]);
    }).catchError((error){
      print("error: ${error.toString()}");
    });
  }

  // void get_data_sports()
  // {
  //   Dio_Helper.dio_getdata(path: "v2/top-headlines", query: {
  //     "country":"us",
  //     "category":"business",
  //     "apiKey":"b8e5ed6a8b0f472abd92c1ab46958e8f",
  //   }).then((value) {
  //     sports=value.data["articles"];
  //     update();
  //     print(sports[1]["title"]);
  //   }).catchError((error){
  //     print("error: ${error.toString()}");
  //   });
  // }
  // void get_data_Science()
  // {
  //   Dio_Helper.dio_getdata(
  //       path: "v2/top-headlines", query: {
  //     "country":"eg",
  //     "category":"science",
  //     "apiKey":"b8e5ed6a8b0f472abd92c1ab46958e8f",
  //   }).then((value) {
  //     science=value.data["articles"];
  //     update();
  //     print(science[1]["title"]);
  //   }).catchError((error){
  //     print("error: ${error.toString()}");
  //   });
  // }

  currentindex(index){
    current_index=index;
    update();
  }

}