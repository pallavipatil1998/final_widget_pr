import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Screen")),
      body: Column(
        children: [
          Container(
            width: 200,
              height: 150,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.rectangle,
              border: Border.all(),
              borderRadius: BorderRadius.all(Radius.circular(50)),
              boxShadow:[BoxShadow(offset: Offset(15,14),spreadRadius: 2,color: Colors.black)]
            ),
            child: Center(child: Text("Hello",style: TextStyle(
                fontFamily: 'BadScript',
                fontStyle:FontStyle.italic,
                fontSize: 50,color: Colors.white,
                fontWeight:FontWeight.bold,
                // background: Paint(),
                backgroundColor: Colors.pink,
                letterSpacing: 4))),
          ),
          SizedBox(height: 200,),
          Center(
            child: Container(
              // no need to give if you provide fitted box
              // width: 300,
              // height: 100,
              color: Colors.purple,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text("Welcome",style: TextStyle(fontSize: 50)),
              ),
            ),
          )
        ],

      ),
    );
  }
}
