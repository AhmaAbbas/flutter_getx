import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//base_url:https://newsapi.org/
//Methods(url):v2/top-headlines?
//query:country=eg&category=business&apiKey=b8e5ed6a8b0f472abd92c1ab46958e8f
//https://newsapi.org/s/egypt-business-news-api
//https://newsapi.org/v2/everything?q=tesla&from=2022-03-14&sortBy=publishedAt&apiKey=b8e5ed6a8b0f472abd92c1ab46958e8f
//https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=b8e5ed6a8b0f472abd92c1ab46958e8f

Widget card_tile({String url_image, String title, String sub_title}){
  return Container(
    child: Card(
      child: ListTile(
        leading:CircleAvatar(
          radius: 50,
          backgroundImage:url_image!= null ? NetworkImage(url_image,): Container(child: Text("Null",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),),
        ),
        title:Text(title!=null?title:'Default Value',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
        subtitle: Text(sub_title!=null?sub_title:'Default Value'),
      ),
    ),
  );
 }