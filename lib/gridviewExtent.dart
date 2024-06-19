import 'package:flutter/material.dart';

class GridViewExtentPg extends StatefulWidget {
  const GridViewExtentPg({super.key});

  @override
  State<GridViewExtentPg> createState() => _GridViewExtentPgState();
}

class _GridViewExtentPgState extends State<GridViewExtentPg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView Extent"),),
      body: GridView.extent(
          maxCrossAxisExtent:300,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        childAspectRatio: 2/2,
        children: [
          Container(
            color: Colors.pink,
            margin: EdgeInsets.all(10),
          ),
          Container(
            color: Colors.pink,
            margin: EdgeInsets.all(10),
          ),
          Container(
            color: Colors.pink,
            margin: EdgeInsets.all(10),
          ),
          Container(
            color: Colors.pink,
            margin: EdgeInsets.all(10),
          ),
          Container(
            color: Colors.pink,
            margin: EdgeInsets.all(10),
          ),
          Container(
            color: Colors.pink,
            margin: EdgeInsets.all(10),
          ),
          Container(
            color: Colors.pink,
            margin: EdgeInsets.all(10),
          ),
          Container(
            color: Colors.pink,
            margin: EdgeInsets.all(10),
          ),
          Container(
            color: Colors.pink,
            margin: EdgeInsets.all(10),
          ),
        ],
      ),
    );
  }
}
