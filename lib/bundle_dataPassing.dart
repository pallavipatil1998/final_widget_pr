import 'package:final_widget/datapassing_page.dart';
import 'package:final_widget/firstpage.dart';
import 'package:flutter/material.dart';

class BundlePassingPg extends StatelessWidget {
  List pageList=["First","Second","Third"];
   BundlePassingPg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bundle Passing"),),
      body: ListView.builder(
        itemCount: pageList.length,
          itemBuilder:(Context,index){
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> DataPassingPage(index)));
              },
              child: ListTile(
                title: Text(pageList[index]),
              ),
            );
          }
      ),
    );
  }
}
