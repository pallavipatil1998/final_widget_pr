import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Row & Column")),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color(0xffff0000),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(width: 3,color: Colors.amber),
                  gradient: LinearGradient(begin:Alignment.topRight,end: Alignment.bottomRight, colors: [Colors.pink,Colors.green] ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(8,8),

                    ),

                  ]
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color(0xffff0000),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(width: 3,color: Colors.amber),
                  gradient: LinearGradient(begin:Alignment.topRight,end: Alignment.bottomRight, colors: [Colors.pink,Colors.green] ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(8,8),

                    ),

                  ]
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color(0xffff0000),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(width: 3,color: Colors.amber),
                  gradient: LinearGradient(begin:Alignment.topRight,end: Alignment.bottomRight, colors: [Colors.pink,Colors.green] ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(8,8),

                    ),

                  ]
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color(0xffff0000),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(width: 3,color: Colors.amber),
                  gradient: LinearGradient(begin:Alignment.topRight,end: Alignment.bottomRight, colors: [Colors.pink,Colors.green] ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(8,8),

                    ),

                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
