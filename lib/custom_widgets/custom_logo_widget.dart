import 'package:flutter/material.dart';

class CustomLogoWidget extends StatelessWidget {
  var mSize;
  Color bgColor;
  Color iconColor;

  CustomLogoWidget(
      {required this.mSize, required this.bgColor, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor:bgColor,
      radius: mSize,
      child: Center(
          child: ImageIcon(
            AssetImage('assets/images/expenses.png'),
            color:iconColor,
            size: mSize,
          )),
    );
  }
}
