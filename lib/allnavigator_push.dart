import 'package:flutter/material.dart';

class AllNavigator extends StatefulWidget {
  const AllNavigator({super.key});

  @override
  State<AllNavigator> createState() => _AllNavigatorState();
}

class _AllNavigatorState extends State<AllNavigator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Navigator"),),
      body: Column(
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Page1(),));
              // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Page1(),));
              // Navigator.pop(context);
              // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Page1(),), (route) => false);
            },
            child: Container(
              width: 200,height: 200,
              color: Colors.purple,
            ),
          )
        ],
      ),
    );
  }
}


class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page No: 1"),),
      body: InkWell(
        onTap: (){
          Navigator.pop(context);
        },
        child: Container(
          height: 200,width: 200,
          color: Colors.green,
        ),
      ),
    );
  }
}
