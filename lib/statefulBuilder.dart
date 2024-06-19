import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stateful extends StatefulWidget{
  @override
  State<Stateful> createState()=> _StatefulState();
}

class _StatefulState extends State<Stateful>{
  var no1Controller=TextEditingController();
  var no2Controller=TextEditingController();
  int flag=0;
  dynamic mResult=0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("StatefulBuilder"),),
      body:StatefulBuilder(builder: (BuildContext context,innersetState){
         return SingleChildScrollView(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               SizedBox(
                 width: 200,height: 200,
                 child: TextField(
                   controller:no1Controller ,
                   keyboardType: TextInputType.number,
                   decoration: InputDecoration(
                     border: OutlineInputBorder(borderSide: BorderSide(width:5,color: Colors.green),borderRadius: BorderRadius.all(Radius.circular(5))),
                     hintText: "Enter value",
                     label: Text("No1"),

                   ),
                   style: TextStyle(
                     fontSize: 20,
                   ),
                 ),
               ),
               SizedBox(
                 width: 200,height: 200,
                 child: TextField(
                   controller:no2Controller ,
                   keyboardType: TextInputType.number,
                   decoration: InputDecoration(
                     border: OutlineInputBorder(borderSide: BorderSide(width:5,color: Colors.green),borderRadius: BorderRadius.all(Radius.circular(5))),
                     hintText: "Enter value",
                     label: Text("No2"),

                   ),
                   style: TextStyle(
                     fontSize: 20,
                   ),
                 ),
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   TextButton(
                       onPressed: (){
                         flag=1;
                       },
                       child: Text("+",style: TextStyle(fontSize: 50,color: Colors.blue),)),
                   TextButton(
                       onPressed: (){
                         flag=2;
                       },
                       child: Text("-",style: TextStyle(fontSize: 50,color: Colors.blue),)),
                   TextButton(
                       onPressed: (){
                         flag=3;
                       },
                       child: Text("*",style: TextStyle(fontSize: 50,color: Colors.blue),)),
                   TextButton(
                       onPressed: (){
                         flag=4;
                       },
                       child: Text("/",style: TextStyle(fontSize: 50,color: Colors.blue),)),

                 ],
               ),
               ElevatedButton(
                   onPressed: (){
                     var num1=int.parse(no1Controller.text.toString());
                     var num2=int.parse(no2Controller.text.toString());
                     if(flag==1){
                       mResult=num1+num2;
                     }else if(flag==2){
                       mResult=num1-num2;
                     }else if(flag==3){
                       mResult=num1*num2;
                     }else if(flag==4){
                       if(num2!=0){
                         mResult=num1/num2;
                       }else{
                         mResult="Infinite Solution Error";
                       }
                     }else{
                       print("Please Select An Operator before Performing any operation");
                     }

                     innersetState((){});
                     // setState(() {});
                     print("setstate build");
                     print(mResult);

                   },
                   child: Text("Calculate",style: TextStyle(fontSize: 40),)

               ),
               Text("Result = $mResult",style: TextStyle(fontSize: 30,color: Colors.deepPurple),),
             ],
           ),
         );
      }),
    );
  }
}