import 'package:flutter/material.dart';

class PositionAlignWid extends StatelessWidget {
  const PositionAlignWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.yellow,
      appBar: AppBar(title: Text("Position Widget"),),
      body: Stack(
        children: [
          Positioned(bottom: 10,right: 10,child: Container(color: Colors.green,height: 100,width: 100,)),
          Positioned(top: 10,left: 10,child: Container(color: Colors.red,height: 100,width: 100,)),
          Positioned(top: 10,right: 10,child: Container(color: Colors.greenAccent,height: 100,width: 100,)),
          Positioned(bottom: 10,left: 10,child: Container(color: Colors.orange,height: 100,width: 100,)),
          Positioned(left: 120,right: 120,child: Container(color: Colors.blueGrey,height: 100,width: 100,)),
          Positioned(top: 150,bottom: 150,child: Container(color: Colors.purple,height: 100,width: 100,)),
          Align(child: Container(color: Colors.cyan,height: 100,width: 100,)),
          Align(alignment:Alignment.bottomCenter ,child: Container(color: Colors.cyan,height: 100,width: 100,)),
          Align(alignment:Alignment.topCenter ,child: Container(color: Colors.cyan,height: 100,width: 100,)),
          Align(alignment:Alignment.centerLeft ,child: Container(color: Colors.cyan,height: 100,width: 100,)),
          Align(alignment:Alignment.centerRight ,child: Container(color: Colors.cyan,height: 100,width: 100,)),
          Align(alignment:Alignment.bottomRight ,child: Container(color: Colors.cyan,height: 90,width: 90,)),
          Align(alignment:Alignment.bottomLeft ,child: Container(color: Colors.cyan,height: 90,width: 90,)),
          Align(alignment:Alignment.topRight ,child: Container(color: Colors.cyan,height: 90,width: 90,)),
          Align(alignment:Alignment.topLeft,child: Container(color: Colors.cyan,height: 90,width: 90,)),










        ],

      ),
    );
  }
}
