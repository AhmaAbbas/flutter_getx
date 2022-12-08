

import 'package:flutter/material.dart';
import 'package:flutter_getx/NewsApp/controller/controller.dart';
import 'package:flutter_getx/consts/consts.dart';
import 'package:get/get.dart';
NewsLAyout_Controller bussiness_controller=Get.put(NewsLAyout_Controller());
class Sports extends StatelessWidget {
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