import 'package:flutter/material.dart';

class GridViewBuildExtent extends StatefulWidget {
  const GridViewBuildExtent({super.key});

  @override
  State<GridViewBuildExtent> createState() => _GridViewBuildExtentState();
}

class _GridViewBuildExtentState extends State<GridViewBuildExtent> {
  List listColor=[Colors.blue,Colors.pink,Colors.green,Colors.yellow,Colors.purple,Colors.blue,Colors.pink,Colors.green,Colors.yellow,Colors.purple];
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
      appBar: AppBar(title: Text("GridViewBuilder Extent")),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
            crossAxisSpacing: 10,
            childAspectRatio: 2/2,
            mainAxisSpacing: 10,

              //optrional
              // mainAxisExtent: 150


          ),
          // itemCount: listColor.length,
          itemCount: listmap.length,

          itemBuilder:(Context,index){
            // var arrData=listColor[index];
            var arrData=listmap[index];
            return Container(
              color: arrData["color"],
              child: Center(child: Text("${arrData["name"]}")),
            );
          }
      ),
    );
  }
}
