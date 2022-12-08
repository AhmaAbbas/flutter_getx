import 'package:flutter/material.dart';
import 'package:flutter_getx/auth_Midlleware/home.dart';
import 'package:flutter_getx/controller/controller.dart';
import 'package:get/get.dart';

import '../main.dart';
import 'middleware.dart';

class  Log_in extends StatelessWidget {
  TextEditingController email_controller=new TextEditingController();
  TextEditingController password_controller=new TextEditingController();
  IconData suffix_icon=Icons.remove_red_eye_outlined;
   final form_key= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Home_Controllergetx>(
        init: Home_Controllergetx(),
        builder: (controller)=>SafeArea(
          child: Scaffold(
            appBar: AppBar(
          title: Text("Log_in",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
      ),
            body: Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Form(
                key: form_key,
                child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter Email",
                    suffix: Icon(Icons.email),
                    border: OutlineInputBorder(
                      //borderSide: const BorderSide(width: 3, color: Colors.blue),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  keyboardType:TextInputType.emailAddress ,
                  validator:(value){
                    if(value.isEmpty)
                    {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  controller: email_controller,
                ),
                SizedBox(height: 20,),
                TextFormField(
                  obscureText:controller.obscure_controller,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: "Enter Passworsd",
                    suffix: IconButton(
                      icon: controller.obscure_controller==false?Icon(suffix_icon):Icon(Icons.remove_red_eye),
                      onPressed: (){
                        controller.obscure_text(!controller.obscure_controller);
                      },
                    ),
                    border: OutlineInputBorder(
                      //borderSide: const BorderSide(width: 3, color: Colors.blue),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  keyboardType:TextInputType.visiblePassword ,
                  validator:(value){
                    if(value.isEmpty)
                    {
                      return 'Please enter  password';
                    }
                    return null;
                  },
                  controller: password_controller,
                ),
                SizedBox(height: 20,),
                MaterialButton(
                color: Colors.cyan,
                child:Text("Submit",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)) ,
                  onPressed: (){
                if(form_key.currentState.validate()){
                  sharedpref.setString("email", "${email_controller.text}");
                  sharedpref.setString("password", "${password_controller.text}");
                  Get.off(()=>Home());
                }
              })
            ],
          ),
              ),
      ),
    ),
        ));
  }
}
