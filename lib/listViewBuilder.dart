import 'package:flutter/material.dart';

class ListViewBuildPg extends StatefulWidget {
  const ListViewBuildPg({super.key});

  @override
  State<ListViewBuildPg> createState() => _ListViewBuildPgState();
}

class _ListViewBuildPgState extends State<ListViewBuildPg> {

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
      appBar: AppBar(title: Text("ListViewBuilder")),
      body: ListView.builder(
        //for normal List-1
        itemCount: listColor.length,

         //for list of map-2
         // itemCount: listmap.length,
        itemBuilder: (context,index){
           return Container(
             height: 200,
             margin: EdgeInsets.all(20),

             //for normal List -1
            color: listColor[index],
            child: Text("${[index]}",style: TextStyle(fontSize: 20)),

            //for List of map -2
            // color: listmap[index]["color"],
            // child: Center(child: Text(listmap[index]["name"])),

           );
        },

      ),
    );
  }
}
