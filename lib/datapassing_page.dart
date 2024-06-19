import 'package:flutter/material.dart';

class DataPassingPage extends StatefulWidget {
  int index;
  DataPassingPage(this.index);

  @override
  State<DataPassingPage> createState() => _DataPassingPageState();
}

class _DataPassingPageState extends State<DataPassingPage> {
  var title='';
  var mColor=Colors.blue.shade500;

  void initState(){
    if(widget.index==0){
      mColor=Colors.purple;
      title="First";
      // title=widget.index;
    }else if(widget.index==1){
      mColor=Colors.pink;
      title="Second";
    }else if(widget.index==2){
      mColor=Colors.green;
      title="Third";
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("$title",style: TextStyle(fontSize: 25)),backgroundColor:mColor),
      body: Center(child: Text("$title",style: TextStyle(fontSize: 30,))),


    );
  }
}
