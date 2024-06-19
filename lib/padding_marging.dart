import 'package:flutter/material.dart';

class PadingMarging extends StatelessWidget {
  const PadingMarging({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Padding & Marging")),
      body: Center(
        child: Column(
          children: [
            Container(
              //margin for Outside Space
              margin:  EdgeInsets.all(50),
              height: 200,
              width: 200,
              color: Colors.pink,

              //padding for inside space
              child:Padding(
                padding: const EdgeInsets.all(50.0),
                child: Text("Hello"),
              )
            )
          ],
        ),
      ),

    );
  }
}
