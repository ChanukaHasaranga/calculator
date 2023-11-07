import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'calculator.dart';

void main(){

runApp(myapp());









}
class myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

return MaterialApp(
  debugShowCheckedModeBanner: false,

  title: "Calculator",

  home: AnimatedSplashScreen(
    
    //me animated splash dana widiaha naththm wenama screensplash kiyana ek wage ekk hadala ahema dannath puluwan
    //if we can put own created screenplash for this creating it and call its in the home
    
    splash:Text("Calculator",style: TextStyle(fontSize: 44,color:Colors.white,fontWeight: FontWeight.bold,fontFamily:"ins"),),
    
    
    backgroundColor: Colors.black,
    splashTransition: SplashTransition.scaleTransition,
    duration: 3000,
  
  
  
  
  
  
  
   nextScreen: calculator()
   
   
   
   ),








);




  }
}