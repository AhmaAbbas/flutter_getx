import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/controller.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class page2_Auth  extends StatelessWidget {
  Home_Controllergetx controller=Get.find();

  var user_name;
  get_pref()async{
    SharedPreferences pref= await SharedPreferences.getInstance();
   user_name= pref.get("pass");
    print("get Succsecfully");
  }
  delete_pref()async{
    SharedPreferences pref= await SharedPreferences.getInstance();
    user_name= pref.clear();
    print("delete Succsecfully");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Two auth",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<Home_Controllergetx>(builder: (controller)=>Text("${controller.user_name}"),),
            MaterialButton(
                color: Colors.cyan,
                child: Text("get pref"),
                onPressed: (){
                  get_pref();
                  print(user_name);
                  controller.get_user_name(user_name);
                }),
            MaterialButton(
                color: Colors.cyan,
                child: Text("delete pref"),
                onPressed: (){
                  delete_pref();
                }),

          ],
        ),
      ),
    );
  }
}
