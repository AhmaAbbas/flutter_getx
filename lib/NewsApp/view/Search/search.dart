import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  var  search_controller=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
        title: Text("Search",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  labelText: "Search",
                  prefixIcon: Icon(Icons.search),
                ),
                onChanged: (value)
                {
                  print(value);
                },
                validator: (value){
                  if(value.isEmpty)
                    return"value must not be empty";
                  return null;
                },
                controller:search_controller ,
              ),
            )
          ],
        ),
      ),
    );
  }
}
