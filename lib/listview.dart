import 'package:flutter/material.dart';

class ListViewProgram extends StatefulWidget {




  @override
  State<ListViewProgram> createState() => _ListViewProgramState();
}

class _ListViewProgramState extends State<ListViewProgram> {
  List listColor=[Colors.blue,Colors.pink,Colors.green,Colors.yellow,Colors.purple];
  List<Map<String,dynamic>> listmap=[
    {
      "color": Colors.yellow,
      "name": "yellow"
    },
    {
      "color": Colors.blue,
      "name": "blue"
    },
    {
      "color": Colors.pink,
      "name": "pink"
    },
    {
      "color": Colors.orange,
      "name": "orange"
    },
    {
      "color": Colors.red,
      "name": "red"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView"),),
       body: ListView(
         //for normal list-1
        /* children: listColor.map((e) => Container(
           height: 200, color: e,)).toList(),*/

         //for list of map-2
         children: listmap.map((e) => Container(
           height: 200,
           color: e['color'] as Color,
           child: Center(child: Text('${e['name']}')),
         )).toList(),

       )
    );
  }
}
