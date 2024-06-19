import 'package:flutter/material.dart';

class GridViewBuilderCountPg extends StatefulWidget {
  const GridViewBuilderCountPg({super.key});

  @override
  State<GridViewBuilderCountPg> createState() => _GridViewBuilderCountPgState();
}

class _GridViewBuilderCountPgState extends State<GridViewBuilderCountPg> {
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
      appBar: AppBar(title: Text("GridView Builder"),),
      body: GridView.builder(
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
              mainAxisSpacing: 11,
            crossAxisSpacing: 11,
            childAspectRatio: 2/2,
            //optional
            // mainAxisExtent: 200


          ),
          // itemCount: listColor.length,
          itemCount: listmap.length,
          itemBuilder: (Context,index){
            // var arrData= listColor[index];
            var arrData= listmap[index];
            return Container(
              color:arrData["color"],
              child: Center(child: Text(arrData["name"])),
            );

          }
      ),
    );
  }
}
