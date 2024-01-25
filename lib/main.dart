import 'package:expense_manager_app/ui_helper/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:expense_manager_app/screens/splash/splash_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
          primarySwatch: createMaterialColor(MyColor.bgBColor),
          backgroundColor: MyColor.bgBColor,
          canvasColor: MyColor.bgWColor   //for Icon
      ),
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: createMaterialColor(MyColor.bgWColor),
        backgroundColor: MyColor.bgWColor,
        canvasColor: MyColor.bgBColor   //for Icon
      ),
      home: SplashPage(),
    );
  }
}

