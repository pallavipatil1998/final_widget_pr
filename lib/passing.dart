import 'package:flutter/material.dart';

class Passing extends StatelessWidget {
  Passing({super.key});
 List listpages=["First","Second","Third","Fourth","Fifth"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Passing"),),
      body: ListView.builder(
        itemCount: listpages.length,
          itemBuilder:(context,index){
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>PasPage2(index) ));
              },
              child: ListTile(
                title: Text(listpages[index]),

              ),
            );
          }
      ),
    );
  }
}



//unother Page
class PasPage2 extends StatefulWidget {
  // const PasPage2({super.key});
  int index;
  PasPage2(this.index);

  @override
  State<PasPage2> createState() => _PasPage2State();
}

class _PasPage2State extends State<PasPage2> {
  var title="";
  var mColor=Colors.blue;

  void initState(){
    if(widget.index==0){
      title="First";
      mColor=Colors.deepPurple;
    }else if(widget.index==1){
      title="Second";
      mColor=Colors.green;
    }else if(widget.index==2){
      title="Third";
    mColor=Colors.pink;
    }else if(widget.index==3){
      title="Fourth";
      mColor=Colors.yellow;
    }else if(widget.index==4){
      title="Fifth";
      mColor=Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title,style: TextStyle(fontSize: 30),) ,backgroundColor: mColor,),
      body: Center(child: Text(title,style: TextStyle(fontSize: 40,backgroundColor: mColor))),
    );
  }
}
