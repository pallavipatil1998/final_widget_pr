import 'package:flutter/material.dart';

class UIBase {
  static InputDecoration getCustomDecoration({
    double bRadius = 21.0,
    Color bColor = Colors.blue,
    required String hint,
    required String lable,
    Color mFillColor = Colors.green,
    bool isFilled = false,
    IconData? mPrifixIcon,
    IconData? mSufixIcon,
    VoidCallback? onSuffixIconTap,
  }){
    return InputDecoration(
      hintText: hint,
      label: Text(lable),
      fillColor: mFillColor,
      filled: isFilled,
      prefixIcon: mPrifixIcon!=null?Icon(mPrifixIcon):null,
      suffixIcon: mSufixIcon!= null? InkWell(
        onTap: onSuffixIconTap,child: Icon(mSufixIcon)):null,
      border: OutlineInputBorder(borderRadius:BorderRadius.circular(bRadius),
        borderSide: BorderSide(color:bColor ),

      )


    );
  }
}
