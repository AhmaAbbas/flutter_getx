import 'package:flutter/material.dart';
import 'package:flutter_getx/NewsApp/controller/controller.dart';
import 'package:flutter_getx/NewsApp/view/Search/search.dart';
import 'package:get/get.dart';
class HomeLayout extends StatelessWidget {
  NewsLAyout_Controller controller=Get.put(NewsLAyout_Controller());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsLAyout_Controller>(
      //init: NewsLAyout_Controller(),
      builder: (_)=>SafeArea(
          child: Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(onPressed: (){Get.to(()=>Search());}, icon: Icon(Icons.search),color: Colors.black,),
                IconButton(onPressed: (){}, icon: Icon(Icons.brightness_2_outlined),color: Colors.black,)
              ],
              title: Text("News App",style: TextStyle(fontSize:20.0,fontWeight: FontWeight.bold),),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: (){},
              child: Icon(Icons.add),
            ),
            body: controller.Screens[controller.current_index],
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.red,
              selectedItemColor: Colors.yellow,
              currentIndex: controller.current_index,
              onTap: (index){
                controller.currentindex(index);
              },
              items: [
                BottomNavigationBarItem(
                    label:"Business" ,
                    icon:Icon(Icons.business)
                ),
                BottomNavigationBarItem(
                    label: "Sports",
                    icon:Icon(Icons.sports_bar)),
                BottomNavigationBarItem(
                    label: "Science",
                    icon:Icon(Icons.science)),
                // BottomNavigationBarItem(
                //     label:"settings" ,
                //     icon:Icon(Icons.settings)
                // ),
              ],
            ),
          )),
    );

  }
}
