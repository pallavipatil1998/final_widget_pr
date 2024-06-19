import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget{
  @override
  State<Calculator> createState()=>_CalculatorState();
}

class _CalculatorState extends State<Calculator>{
  var no1Controller=TextEditingController();
  var no2Controller=TextEditingController();
  // var mHeight=11.0;
  var mResult=0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Addition"),),
      body: Column(
        children: [
          Text("Addition:",style: TextStyle(fontSize: 35)),
          SizedBox(height: 100, width: 300,
          child: TextField(
            controller: no1Controller,
            decoration: InputDecoration(
              label: Text("No1"),
              hintText: "Enter value",
              icon: Icon(Icons.numbers_sharp),
              border: OutlineInputBorder(borderSide: BorderSide(width: 12,strokeAlign: BorderSide.strokeAlignOutside,style: BorderStyle.solid))

            ),),

            // style: TextStyle(decoration:TextDecoration.overline),
          ),
          SizedBox(height: 100, width: 300,
            child: TextField(
              controller: no2Controller,
              decoration: InputDecoration(
                  label: Text("No2"),
                  hintText: "Enter value",
                  icon: Icon(Icons.numbers_sharp),
                  border: OutlineInputBorder(borderSide: BorderSide(width: 12,strokeAlign: BorderSide.strokeAlignOutside,style: BorderStyle.solid))

              ),),

            // style: TextStyle(decoration:TextDecoration.overline),
          ),
          ElevatedButton
            (onPressed: (){
              var no1=int.parse(no1Controller.text.toString());
              var no2=int.parse(no2Controller.text.toString());
              mResult=no1+no2;
              setState(() {});
              print("Sum=$mResult");

          },
              child: Text("Add",style: TextStyle(fontSize: 40),)
          ),
          Text("$mResult", style: TextStyle(fontSize: 20),)


        ],)

    );
  }
}