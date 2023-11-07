import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
class calculator extends StatefulWidget {

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {


  String equation='0';
  String expression='';
  String result="0";

Widget calculatebutton(String btntxt,Color btncolor,Color txtcolors){
return Container(


child:ElevatedButton(onPressed: () {
  



calculation("$btntxt");




},

child: Text(btntxt,style: TextStyle(color:txtcolors,fontSize: 35),),

style:ElevatedButton.styleFrom(

backgroundColor: btncolor,
shape: CircleBorder(),



padding: EdgeInsets.all(14)

),


)


);




}



  @override
  Widget build(BuildContext context) {





    

return Scaffold(
backgroundColor: Colors.black,


body: Padding(
  padding: EdgeInsets.symmetric(horizontal: 5),
  child:   Column(
  
  mainAxisAlignment: MainAxisAlignment.end,
  
  children: [
  
  
     Container(
      height: 90,
      alignment: Alignment.topRight,
      child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(child: Text(equation,style: TextStyle(color: Color.fromARGB(255, 108, 8, 8),fontSize: 30,),textAlign: TextAlign.left,)),
      ),
    ),
  
  
  
  
  
  
    Container(
      height: 200,
      alignment: Alignment.bottomRight,
      child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(child: Text(result,style: TextStyle(color: Colors.white,fontSize: 90,),textAlign: TextAlign.left,)),
      ),
    ),

    Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,

children: [


calculatebutton("AC", Colors.grey, const Color.fromARGB(255, 0, 0, 0)),
calculatebutton("+/-",Colors.grey, Colors.black),
calculatebutton("%",  Colors.grey, Colors.black),

calculatebutton("/", const Color.fromARGB(255, 201, 154, 11), const Color.fromARGB(255, 255, 255, 255)),





],


      
    ),

       SizedBox(height:12,),
       
        Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,

children: [


calculatebutton("7", const Color.fromARGB(255, 28, 27, 27), Color.fromARGB(255, 255, 255, 255)),
calculatebutton("8",Color.fromARGB(255, 28, 27, 27), Colors.white),
calculatebutton("9",  Color.fromARGB(255, 28, 27, 27),Colors.white),

calculatebutton("x", const Color.fromARGB(255, 201, 154, 11), const Color.fromARGB(255, 255, 255, 255)),





],


      
    ),

    SizedBox(height:12,),
       
        Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,

children: [


calculatebutton("4", const Color.fromARGB(255, 28, 27, 27), Color.fromARGB(255, 255, 255, 255)),
calculatebutton("5",Color.fromARGB(255, 28, 27, 27), Colors.white),
calculatebutton("6",  Color.fromARGB(255, 28, 27, 27),Colors.white),

calculatebutton("-", const Color.fromARGB(255, 201, 154, 11), const Color.fromARGB(255, 255, 255, 255)),





],


      
    ),

    SizedBox(height:12,),
       
        Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,

children: [


calculatebutton("1", const Color.fromARGB(255, 28, 27, 27), Color.fromARGB(255, 255, 255, 255)),
calculatebutton("2",Color.fromARGB(255, 28, 27, 27), Colors.white),
calculatebutton("3",  Color.fromARGB(255, 28, 27, 27),Colors.white),

calculatebutton("+", const Color.fromARGB(255, 201, 154, 11), const Color.fromARGB(255, 255, 255, 255)),





],


      
    ),
  

    SizedBox(height:12,),
       
        Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,

children: [

ElevatedButton(
  
  
  onPressed: () {
  
calculation("0");


},
child: Text("0",style: TextStyle(fontSize: 35,color:Colors.white,),),
style: ElevatedButton.styleFrom(
backgroundColor: Colors.grey,
shape: StadiumBorder(),
padding: EdgeInsets.fromLTRB(34, 20, 105, 20)


),



),




calculatebutton(".",  Color.fromARGB(255, 28, 27, 27),Colors.white),

calculatebutton("=", const Color.fromARGB(255, 201, 154, 11), const Color.fromARGB(255, 255, 255, 255)),





],


      
    )

    
  

    
  
  
  
  











  
  
  
  
  
  
  
  
  
  
  
  ],
  
  
  
  
  
  
  
  
  
  
  
  
  
  ),
),




);






  }


void calculation(btntxt){

setState(() {
     if (btntxt == 'AC') {

       equation = '0';
       result = '0';

     }
     
     
      else if (btntxt == '=') {

       expression = equation;
       expression = expression.replaceAll('x', '*');
       expression = expression.replaceAll('%', '/100');
       expression=expression.replaceAll("+/-", "-");


       try{
         Parser p = Parser();
         Expression exp = p.parse(expression);
         ContextModel cm = ContextModel();
         result = '${exp.evaluate(EvaluationType.REAL, cm)}';

       }
           catch (e){
         'Error';
           }

     }else{
       if (equation == '0') {
         equation = btntxt;
       }else
       equation = equation + btntxt;
     }
   });


}



  
}
