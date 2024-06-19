import 'package:flutter/material.dart';

class AllButton extends StatelessWidget {
  var value1Controller=TextEditingController();
  var value2Controller=TextEditingController();
  var sum=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button"),),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 20,),
              SizedBox(
                width: 300,
                height: 100,
                child: TextField(
                  onChanged: (v1){
                    print(v1);
                  },
                  

                   controller: value1Controller,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(width: 2,color: Colors.green),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(width: 5,color: Colors.yellow)
                    ),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: Colors.lightGreenAccent,width: 3,)),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                        color: Colors.red,
                         width: 4
                      )
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width:20,color: Colors.blue,),
                      gapPadding: 800
                    ),
                    label: Text("value 1"),
                    icon: Icon(Icons.numbers),
                    hintText: "Enter First value",
                    prefixIcon: Icon(Icons.email_outlined),
                    prefixText: "mr/mrs",
                    suffixIcon: Icon(Icons.wifi_password),
                    suffixText: ".com",

                  ),
                  keyboardType: TextInputType.phone,

                ),
              ),

              SizedBox(
                width:300,
                height: 100,
                child: TextField(
                  onChanged: (no){
                    print(no);
                  },
                  controller: value2Controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)),borderSide: BorderSide(
                      width: 20
                    )),
                    label:Text("value 2"),
                    hintText: "enter no",
                    prefixIcon:  Icon(Icons.accessibility),
                    suffixIcon: Icon(Icons.accessible_forward_outlined),
                    icon: Icon(Icons.ac_unit_rounded),
                    floatingLabelStyle: TextStyle(color: Colors.green,fontSize: 30,height: 1,shadows: [Shadow(offset: Offset(5, 5))],backgroundColor: Colors.purple,letterSpacing: 2,)

                  ),
                ),
              ),

             TextButton(onPressed: (){
               // print(value1Controller.text.toString());
               // print(value2Controller.text.toString());
               var no1=int.parse(value1Controller.text.toString());
               var no2=int.parse(value2Controller.text.toString());
               if(value1Controller.text.toString()!=null && value2Controller.text.toString()!= null){
                 sum=no1+no2;
                 print(sum);
               }else{
                 print("Please Enter value");
               }

             },
                 child:Text("get value "),
               ),

               Text("$sum",style: TextStyle(fontSize: 20)),

               ElevatedButton(onPressed: (){},
                   child: Text("Elevated"),
                 style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.deepPurple),
                     foregroundColor: MaterialStatePropertyAll(Colors.yellow),
                   shadowColor: MaterialStatePropertyAll(Colors.blueGrey,),
                   textStyle: MaterialStatePropertyAll(TextStyle(letterSpacing:5,fontSize: 20,)),
                  side: MaterialStatePropertyAll(BorderSide(width: 6,color: Colors.pink,strokeAlign: BorderSide.strokeAlignOutside,))
                 )
               ),
              OutlinedButton(onPressed: (){}, child: Text("Outlined"))
            ],
          ),

        ),
      ),


    );

  }

}
