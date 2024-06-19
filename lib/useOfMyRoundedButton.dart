import 'dart:async';

import 'package:final_widget/customRoundedButton.dart';
import 'package:flutter/material.dart';

class UseMyRoundedButton extends StatefulWidget {
  const UseMyRoundedButton({super.key});

  @override
  State<UseMyRoundedButton> createState() => _UseMyRoundedButtonState();
}

class _UseMyRoundedButtonState extends State<UseMyRoundedButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" Cutom Rounded Button"),),
      body: My_RoundedButton(
          title: "Play",
          isLoading: false,
          onTap: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context) => Use2RB(),));
            print("Play Button Tapped");
          },
        icon: Icons.ac_unit,
        cornerRadius: 20,
        mColor: Colors.purple,

          ),
    );
  }
}


class Use2RB extends StatefulWidget {
  const Use2RB({super.key});

  @override
  State<Use2RB> createState() => _Use2RBState();
}

class _Use2RBState extends State<Use2RB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Use2"),),
      body: My_RoundedButton(
          title: "Home",
          isLoading: true,
          onTap: (){
            setState(() {});
            Navigator.push(context, MaterialPageRoute(builder:  (context) => Scaffold(appBar: AppBar()),));
            /*Timer(Duration(seconds:1), () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Scaffold(
                appBar: AppBar(title: Text("Use3"),),
              ),));
            });*/
          },
        mColor: Colors.pink,
        icon: Icons.account_balance,

      ),
    );
  }
}



