import 'package:flutter/material.dart';
import 'package:flutter_getx/main.dart';
import 'package:get/get.dart';

import 'log_in.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
        ),
        body: Container(
          child: Center(
            child: MaterialButton(
              child: Text("Sign Out ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
              onPressed: (){
               // sharedpref.clear();
                Get.off(()=>Log_in());
              },
            ),
          ),
        ),
      ),
    );
  }
}
