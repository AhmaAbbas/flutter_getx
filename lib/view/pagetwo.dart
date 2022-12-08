import 'package:flutter/material.dart';
import 'package:flutter_getx/auth/auth.dart';
import 'package:flutter_getx/controller/controller.dart';
import 'package:flutter_getx/controller/home_controller.dart';
import 'package:flutter_getx/utli/my_binding.dart';
import 'package:flutter_getx/view/pagetree.dart';
import 'package:get/get.dart';

class Page_Two  extends StatelessWidget {
  //Home_Controllergetx controller=Get.put(Home_Controllergetx());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Two",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
                color: Colors.cyan,
                child: Text("Go off Page Home Page"),
                onPressed: (){
                  Get.off(()=>Home_Controller());
                }),
            MaterialButton(
                color: Colors.cyan,
                child: Text("Go to Page Home Page"),
                onPressed: (){
                  Get.to(()=>Home_Controller());
                }),
            MaterialButton(
                color: Colors.cyan,
                child: Text("Go to Page 3"),
                onPressed: (){
                  Get.to(()=>Page3());
                }),
            MaterialButton(
                color: Colors.cyan,
                child: Text("Go to Auth"),
                onPressed: (){
                  Get.to(()=>Auth());
                })
          ],
        ),
      ),
    );
  }
}
