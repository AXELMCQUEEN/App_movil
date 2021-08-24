import 'package:appintegra/pages/login.dart';

import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App integradora",
      initialRoute: "/login",
      routes: {
        "/login":(_)=>Login(),
       
      },
    );
  }
}