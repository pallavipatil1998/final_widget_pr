import 'package:flutter/material.dart';

class ShowImage extends StatelessWidget {
  const ShowImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Showing Image"),),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //1st methode
            Image(image: AssetImage("assets/images/blood-drop.png"),height: 300, width: 200,),
            // SizedBox(height: 100,),

            //2nd methode
            Container(
              width: 100,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                  image: DecorationImage(
                    image: AssetImage("assets/images/blood-drop.png"),
                  fit: BoxFit.fill
                )
              ),
            ),

            //3rd methode
            SizedBox(
              width: 100,
              height: 100,
              child: Image.asset("assets/images/blood-drop.png"),
            ),

            //4th methode
            Image.asset("assets/images/blood-drop.png",height: 50,width: 60,)

          ],
        ),
      ),
    );
  }
}
