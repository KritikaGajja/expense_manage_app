import 'package:expense_manager_app/ui_helper/ui_helper.dart';
import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  var title;
  VoidCallback action;
  var mWidth;
  Color mColor;
  Color textColor;
  CustomRoundedButton(
      {required this.title,
      required this.action,
      required this.mWidth,
      required this.mColor,
        required this.textColor
      });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: mWidth,
        height: 50,
        child: ElevatedButton(
          onPressed: action,
          style: ElevatedButton.styleFrom(
            textStyle:mTextStyle25(mColor:textColor ) ,
              primary: mColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11),
              )),
          child:Text(title,style: mTextStyle25(mColor: textColor),),
        ));
  }
}
