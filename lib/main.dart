import 'package:final_widget/Wrapping_widg.dart';
import 'package:final_widget/allnavigator_push.dart';
import 'package:final_widget/bundle_dataPassing.dart';
import 'package:final_widget/buttons.dart';
import 'package:final_widget/customRoundedButton.dart';
import 'package:final_widget/customTextField.dart';
import 'package:final_widget/expanded_widget.dart';
import 'package:final_widget/firstpage.dart';
import 'package:final_widget/gridViewBuilderCount.dart';
import 'package:final_widget/gridViewBuilderExtent.dart';
import 'package:final_widget/gridviewCount.dart';
import 'package:final_widget/gridviewExtent.dart';
import 'package:final_widget/image.dart';
import 'package:final_widget/listTile.dart';
import 'package:final_widget/listViewBuilder.dart';
import 'package:final_widget/listview.dart';
import 'package:final_widget/map_func.dart';
import 'package:final_widget/namePassing.dart';
import 'package:final_widget/padding_marging.dart';
import 'package:final_widget/passing.dart';
import 'package:final_widget/position_Align_wid.dart';
import 'package:final_widget/row_column.dart';
import 'package:final_widget/stack.dart';
import 'package:final_widget/statefulBuilder.dart';
import 'package:final_widget/stateless_statefullwid.dart';
import 'package:final_widget/calculator_ui_rebuild_withstatefull.dart';
import 'package:final_widget/timerSplashScreen.dart';
import 'package:final_widget/tip_calculator.dart';
import 'package:final_widget/useCustomTextField.dart';
import 'package:final_widget/useOfMyRoundedButton.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      darkTheme: ThemeData.dark(),
      theme: ThemeData(

        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:UseCustomTextField()
      // FirstPage(),
    );
  }
}


