import 'package:expense_manager_app/screens/home/fragments/frag_stat_page.dart';
import 'package:expense_manager_app/screens/home/fragments/frag_transaction_page.dart';
import 'package:expense_manager_app/ui_helper/ui_helper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;
  var isLight;
  var arrPages = [
    FragTransactionPage(),
    FragStatPage(),
  ];

  @override
  Widget build(BuildContext context) {
    isLight = Theme.of(context).brightness == Brightness.light;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: arrPages[currentIndex],
      bottomNavigationBar: getMyBNBar(),

    );
  }
  Widget getMyBNBar(){
    return   BottomNavigationBar(
    onTap: (index){
    currentIndex=index;
    setState((){

    });
    },
    currentIndex: currentIndex,
    elevation: 10,
    landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
    selectedIconTheme: IconThemeData(
    size: 25
    ),
    unselectedIconTheme: IconThemeData(
    size: 19
    ),
    backgroundColor:
    isLight ? MyColor.secondaryWColor : MyColor.secondaryBColor,
    items: [
    BottomNavigationBarItem(

    icon: Icon(Icons.inbox_outlined,
    color: isLight ? MyColor.secondaryBColor : MyColor.secondaryWColor),
    label: '',
    tooltip: 'transaction',
    activeIcon: Icon(
    Icons.inbox_rounded,
    color: isLight ? MyColor.bgBColor : MyColor.bgWColor
    )),
    BottomNavigationBarItem(
    icon: Icon(Icons.stacked_bar_chart_outlined,color: isLight ? MyColor.secondaryBColor : MyColor.secondaryWColor),

    label: '',
    tooltip: 'stats',
    activeIcon: Icon(Icons.stacked_bar_chart_rounded,color: isLight ? MyColor.bgBColor : MyColor.bgWColor))
    ],
    );
  }
}
