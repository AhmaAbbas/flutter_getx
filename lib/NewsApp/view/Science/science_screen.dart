

import 'package:flutter/material.dart';
import 'package:flutter_getx/NewsApp/controller/controller.dart';
import 'package:flutter_getx/consts/consts.dart';
import 'package:get/get.dart';
NewsLAyout_Controller bussiness_controller=Get.put(NewsLAyout_Controller());
class Science extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsLAyout_Controller>(
        builder: (_){
          return bussiness_controller.bussinse.length==0?Center(child: CircularProgressIndicator()):ListView.separated(
              physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context ,int index){
                return card_tile(
                  url_image: bussiness_controller.bussinse[index]["urlToImage"],
                  title: bussiness_controller.bussinse[index]["title"],
                  sub_title: bussiness_controller.bussinse[index]["description"],
                );
              },
              separatorBuilder:(BuildContext context, int index) => const Divider(),
              itemCount: bussiness_controller.bussinse.length);
        });
  }
}
// science_controller.science.length==0?Center(child: CircularProgressIndicator()):ListView.separated(
// physics: BouncingScrollPhysics(),
// itemBuilder: (BuildContext context ,int index){
// return card_tile(
// url_image: science_controller.science[index]["urlToImage"],
// title: science_controller.science[index]["title"],
// sub_title:science_controller.science[index]["description"],
// );
// },
// separatorBuilder:(BuildContext context, int index) => const Divider(),
// itemCount: science_controller.science.length);