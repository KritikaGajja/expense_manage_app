import 'dart:async';

import 'package:expense_manager_app/custom_widgets/custom_logo_widget.dart';
import 'package:expense_manager_app/screens/user_onboarding/login/login_page.dart';
import 'package:expense_manager_app/ui_helper/ui_helper.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .backgroundColor,
      body: Center(
        child: Stack(
          children: [
            Center(
              child: CustomLogoWidget(mSize: width > 500 ? 50 : 40,bgColor: Theme.of(context).canvasColor,iconColor: Theme.of(context).backgroundColor,),
            ),
          ],
        ),
      ),
    );
  }
}
