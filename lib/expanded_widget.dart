import 'package:flutter/material.dart';

class ExpandedWid extends StatelessWidget {
  const ExpandedWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expanded widget for Row & Column"),),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Container(height: 50,width: 50,color: Colors.pink,)),
              Expanded(flex:2,child: Container(height: 50,width: 50,color: Colors.green,)),
              Container(height: 50,width: 50,color: Colors.blue,),
              Container(height: 50,width: 50,color: Colors.red,)
            ],
          ),
          Expanded(child: Container(height: 50,width: 50,color: Colors.pink,)),
          Expanded(flex:2,child: Container(height: 50,width: 50,color: Colors.green,)),
          Container(height: 50,width: 50,color: Colors.blue,),
          Container(height: 50,width: 50,color: Colors.red,)
        ],
      ),

    );
  }
}
