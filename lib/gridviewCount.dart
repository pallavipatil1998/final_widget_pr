import 'package:flutter/material.dart';

class GridViewCountPg extends StatefulWidget {
  const GridViewCountPg({super.key});

  @override
  State<GridViewCountPg> createState() => _GridViewCountPgState();
}

class _GridViewCountPgState extends State<GridViewCountPg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView Count"),),
      body: GridView.count(
          crossAxisCount: 2,
        childAspectRatio: 1/2,
        mainAxisSpacing: 10,
        crossAxisSpacing:10,

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
