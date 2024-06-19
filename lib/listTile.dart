import 'package:flutter/material.dart';

class ListTilePg extends StatefulWidget {
  const ListTilePg({super.key});

  @override
  State<ListTilePg> createState() => _ListTilePgState();
}

class _ListTilePgState extends State<ListTilePg> {

  List listTile=[
    {
      "name":"Ram",
       "Msg": "Hello",
      "time": "2:00 am",
      "unreadCount": "2",
      "imagePath":"assets/images/ic_flat.png"

    },
    {
      "name":"gita",
      "Msg": "Hi",
      "time": "3:00 am",
      "unreadCount": "4",
      "imagePath":"assets/images/ic_flat.png"

    },
    {
      "name":"shruti",
      "Msg": "Good morning",
      "time": "7:00 am",
      "unreadCount": "1",
      "imagePath":"assets/images/ic_flat.png"

    },
    {
      "name":"sharwari",
      "Msg": "nice work",
      "time": "9:00 am",
      "unreadCount": "3",
      "imagePath":"assets/images/ic_flat.png"

    },
    {
      "name":"moon",
      "Msg": "good ",
      "time": "5:00 am",
      "unreadCount": "5",
      "imagePath":"assets/images/ic_flat.png"

    },
    {
      "name":"shahid",
      "Msg": "keep it up",
      "time": "5:00 am",
      "unreadCount": "5",
      "imagePath":"assets/images/ic_flat.png"

    },
    {
      "name":"sid",
      "Msg": "nice to meet you",
      "time": "5:00 am",
      "unreadCount": "5",
      "imagePath":"assets/images/ic_flat.png"

    },
    {
      "name":"Ram",
      "Msg": "Hello",
      "time": "2:00 am",
      "unreadCount": "2",
      "imagePath":"assets/images/ic_flat.png"

    },
    {
      "name":"gita",
      "Msg": "Hi",
      "time": "3:00 am",
      "unreadCount": "4",
      "imagePath":"assets/images/ic_flat.png"

    },
    {
      "name":"shruti",
      "Msg": "Good morning",
      "time": "7:00 am",
      "unreadCount": "1",
      "imagePath":"assets/images/ic_flat.png"

    },
    {
      "name":"sharwari",
      "Msg": "nice work",
      "time": "9:00 am",
      "unreadCount": "3",
      "imagePath":"assets/images/ic_flat.png"

    },
    {
      "name":"moon",
      "Msg": "good ",
      "time": "5:00 am",
      "unreadCount": "5",
      "imagePath":"assets/images/ic_flat.png"

    },
    {
      "name":"shahid",
      "Msg": "keep it up",
      "time": "5:00 am",
      "unreadCount": "5",
      "imagePath":"assets/images/ic_flat.png"

    },
    {
      "name":"sid",
      "Msg": "nice to meet you",
      "time": "5:00 am",
      "unreadCount": "5",
      "imagePath":"assets/images/ic_flat.png"

    }


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListTile"),),
      body: ListView.builder(
        itemCount: listTile.length,
          itemBuilder: (Context,index){
          var arrData=listTile[index];
            return ListTile(
              title:Text(arrData["name"],style: TextStyle(fontSize: 22)) ,
              subtitle: Text(arrData["Msg"],style: TextStyle(fontSize: 19),),
              leading: CircleAvatar(
                radius: 30,
                child: Image(image: AssetImage("assets/images/blood-drop.png")),
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(arrData["time"]),
                  CircleAvatar(radius: 12,
                    child: Text(arrData["unreadCount"]),
                  ),
                ],
              ),

            );
          }
      )
    );
  }
}
