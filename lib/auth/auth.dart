import 'package:flutter/material.dart';
import 'package:flutter_getx/auth/page2.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Auth  extends StatelessWidget {
  //Home_Controllergetx controller=Get.put(Home_Controllergetx());
  insert_pref()async{
    SharedPreferences pref= await SharedPreferences.getInstance();
    pref.setString("user_name", "Ahmed Abbas");
    pref.setString("pass", "Ahmed Abbas111");
    pref.setString("email", "atwaa7600@gmail.com");

    print("inserted Succsec fully");
  }

  @override
  Widget build(BuildContext context){

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
                child: Text("set  user_name"),
                onPressed: ()async{
                  await insert_pref();
                }),
            MaterialButton(
                color: Colors.cyan,
                child: Text("get user_name"),
                onPressed: (){
                  Get.to(()=>page2_Auth());
                }),
          ],
        ),
      ),
    );
  }
}