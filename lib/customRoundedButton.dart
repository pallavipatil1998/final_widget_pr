import 'package:flutter/material.dart';

class My_RoundedButton extends StatelessWidget {

  String title;
  double mWidth;
  Color mColor;
  double cornerRadius;
  IconData? icon;
  VoidCallback onTap;
  bool isLoading;

  My_RoundedButton({
    required this.title,
    this.mWidth=300,
    this.mColor=Colors.blue,
    this.cornerRadius=21,
    this.icon,
    required this.isLoading,
    required this.onTap,

});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: mWidth,
      child: ElevatedButton(
          onPressed: onTap,
          child:isLoading ? Row(mainAxisAlignment: MainAxisAlignment.center,children: [
            CircularProgressIndicator(color: Colors.white),Text("Loading...")
          ],) : icon==null ? Text(title) : Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Icon(icon),SizedBox(width: 11,),Text(title)
          ],),
            style: ElevatedButton.styleFrom(
          backgroundColor: mColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(cornerRadius)
              )
      ),
      ),
    );
  }
}
