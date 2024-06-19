import 'package:flutter/material.dart';

class Wrapping_Wdg extends StatelessWidget {
  const Wrapping_Wdg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wrapping"),),
      body: Wrap(
        spacing:14,
        runSpacing: 25,
        children: [
          Container(width: 100,height: 100, color: Colors.green,),
          Container(width: 100,height: 100, color: Colors.blue,),
          Container(width: 100,height: 100, color: Colors.yellow,),
          Container(width: 100,height: 100, color: Colors.purple,),
          Container(width: 100,height: 100, color: Colors.orange,),
          Container(width: 100,height: 100, color: Colors.pink,),
        ],
        crossAxisAlignment: WrapCrossAlignment.end,
        verticalDirection: VerticalDirection.down,
        runAlignment: WrapAlignment.spaceAround,
        alignment: WrapAlignment.spaceBetween,
       clipBehavior: Clip.antiAlias,
        textDirection: null,


        direction: Axis.vertical,
      ),
    );
  }
}
