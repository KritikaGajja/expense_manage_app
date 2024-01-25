import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  Color bordercolor;
  Color fillColor;
  IconData mIcon;

  // bool obscure;

  CustomTextField({
    required this.controller,
    required this.bordercolor,
    required this.fillColor,
    required this.mIcon,
    //    required this.obscure
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          filled: true,
          fillColor: fillColor,
          prefixIcon: Icon(mIcon),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(21),
              borderSide:
                  BorderSide(color: bordercolor.withOpacity(0.2), width: 0)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(21),
              borderSide: BorderSide(color: bordercolor, width: 1))),
    );
    ;
  }
}
