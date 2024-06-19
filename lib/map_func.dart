import 'package:flutter/material.dart';

class MapFunc extends StatelessWidget {
  // const MapFunc({super.key});
  List<int> listStar2=[1,2,3,4,5]; //1st methode

  //2nd methode
  // List<Widget> listStar=[];
  Widget myStarWidget=Icon(Icons.star,size: 30,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Map Func"),),
      
      body: 
      Row(
        //1st methode
        // children: listStar2.map((e) => Icon(Icons.star,size: 46,)).toList(),

        //2nd methode
        children: [
          for(int i=0;i<10;i++)myStarWidget,
          // Text("Hello")
        ],
      ),
    );
  }
}
