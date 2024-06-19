import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(title: Text("Home"),),
      body: Container(width: 100,height: 100,color: Colors.green,child: Text("Home"),),
    );
  }
}


class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState()=>_HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(title: Text("HomePage")),
      body: Container(
        width: 200,height: 200,
        color: Colors.purple,child: Text("HomePage"),
      ),

    );
  }

}

class three extends StatefulWidget {
  const three({super.key});

  @override
  State<three> createState() => _threeState();
}

class _threeState extends State<three> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
