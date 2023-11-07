import 'dart:async';
import 'dart:html';


import 'package:calculator/calculator.dart';
import 'package:flutter/material.dart';

class screensplash extends StatefulWidget {
  const screensplash({super.key});

  @override
  State<screensplash> createState() => _screensplashState();
}

class _screensplashState extends State<screensplash> {

void initState(){

super.initState();

Timer(Duration(seconds: 2),(){

Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => calculator(),));



});




}






  @override
  Widget build(BuildContext context) {
return Scaffold(

backgroundColor:const Color.fromARGB(255, 0, 0, 0),


body: Center(

child: Column(
  mainAxisAlignment: MainAxisAlignment.center,

children: [

Container(

width: 300,
height: 500,

child: Image.asset("asset/splashwall.png"),



),


Text("Calculator",style: TextStyle(fontSize: 44,color:Colors.white,fontWeight: FontWeight.bold),),




],






),


),


);





  }
}