import 'package:flutter/material.dart';

class StackWid extends StatelessWidget {
  const StackWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack Widget LIFO"),),
      body: Stack(
         children: [
            Container(color: Colors.red,width: 400,height: 400),
           Container(color: Colors.green,width: 300,height: 300),
           Container(color: Colors.purple,width: 200,height: 200),
           Container(color: Colors.yellow,width: 100,height: 100)
         ],
      ),
    );
  }
}
