import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration (seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>Page2() ,));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(child: Icon(Icons.home,size: 250,color: Colors.blueAccent,)),
    );
  }
}



class Pagge1 extends StatefulWidget {
  const Pagge1({super.key});

  @override
  State<Pagge1> createState() => _Pagge1State();
}

class _Pagge1State extends State<Pagge1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page1"),),
      body: Container(
        width: 500,height: 900,
        color: Colors.pink,
        margin: EdgeInsets.all(20),
        child: Center(child: Text(" First Screen",style: TextStyle(color: Colors.white,fontSize: 40))),
      ),
    );
  }
}




class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder:  (context) => Scaffold(
            appBar: AppBar(title: Text("Page2"),),
          ),));
        }, 
        child: Text("Next",style: TextStyle(fontSize: 40),)
    );
  }
}


