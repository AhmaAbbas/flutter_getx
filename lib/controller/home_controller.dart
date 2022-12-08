import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/controller.dart';
import 'package:flutter_getx/view/pagetwo.dart';
import 'package:get/get.dart';

class Home_Controller extends StatelessWidget {
 //final  controller = Get.lazyPut<Home_Controllergetx>(() => Home_Controllergetx(),fenix: true); // here!
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Home_Controllergetx>(
        //init: Home_Controllergetx(),
        builder:(controller){
          print("rebuild ${controller.count}");
      return Scaffold(
        appBar: AppBar(
          title: Text("Counter App Get-x",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
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
                  Text("${controller.count}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
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
                Get.to(()=>Page_Two());
                })
          ],
        )
      );
    });
  }
}
