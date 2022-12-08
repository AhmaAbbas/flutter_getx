import 'package:get/get.dart';

class Home_Controllergetx extends GetxController{
  int count=0;
  bool obscure_controller=false;
  var user_name;
  void increament(){
    count++;
    update();
  }
  void decreament(){
    count--;
    update();
  }

  get_user_name(username){
    user_name=username;
    update();
  }
  obscure_text(obscure){
    obscure_controller=obscure;
    update();
  }
}