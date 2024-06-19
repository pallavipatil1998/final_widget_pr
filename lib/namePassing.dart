import 'dart:async';

import 'package:final_widget/timerSplashScreen.dart';
import 'package:flutter/material.dart';

class Splashes extends StatefulWidget {
  const Splashes({super.key});


  @override
  State<Splashes> createState() => _SplashesState();
}

class _SplashesState extends State<Splashes> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NamePassingPage1(),));
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(child: Icon(Icons.ac_unit,size: 400,color: Colors.pink)),
    );
  }
}





class NamePassingPage1 extends StatefulWidget {
  const NamePassingPage1({super.key});


  @override
  State<NamePassingPage1> createState() => _NamePassingPage1State();
}

class _NamePassingPage1State extends State<NamePassingPage1> {
  var nameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Name Passing 1"),),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,width: 300,
              child: Center(
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(label:Text("Name"),
                    hintText: "Enter Name",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(width: 100,strokeAlign: BorderSide.strokeAlignOutside,style: BorderStyle.solid,color: Colors.purple),),

                  ),
                ),
                
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  var dearName=nameController.text.toString();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NamePass2(name: dearName)));
                },
                child: Text("Next",style: TextStyle(fontSize: 40),))
          ],
        ),
      ),
    );
  }
}


class NamePass2 extends StatefulWidget {
  // const NamePass2({super.key});
  String  name;
  NamePass2({required this.name});

  @override
  State<NamePass2> createState() => _NamePass2State();
}

class _NamePass2State extends State<NamePass2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("NamePass2"),),
      body: Center(
        child: Column(
          children: [
            Text("Welcome \n ${widget.name}",style: TextStyle(fontSize: 50),),

          ],
        ),
      ),
    );
  }
}
