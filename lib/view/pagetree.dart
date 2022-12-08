import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/controller.dart';
import 'package:flutter_getx/view/pagetwo.dart';
import 'package:get/get.dart';

class Page3 extends StatelessWidget {
  //Home_Controllergetx controller =Get.put(Home_Controllergetx(),permanent:  true);
 Home_Controllergetx controller =Get.find();
  @override
  Widget build(BuildContext context) {
          return Scaffold(
              appBar: AppBar(
                title: Text("page3",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
              ),
              body:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FloatingActionButton(
                          heroTag: "btn1",
                            child: Icon(Icons.add),
                            onPressed: (){
                              controller.increament();
                            }),
                        GetBuilder<Home_Controllergetx>(
                            builder: (controller)=>
                                Text("${controller.count}",
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                        FloatingActionButton(
                            heroTag: "btn2",
                            child: Icon(Icons.exposure_minus_1),
                            onPressed: (){
                              controller.decreament();
                            }),
                      ],
                    ),
                  ),
                  MaterialButton(
                      color: Colors.green,
                      child: Text("Go to Page Two"),
                      onPressed: (){
                        Get.to(Page_Two());
                      })
                ],
              )
          );
        }
  }
