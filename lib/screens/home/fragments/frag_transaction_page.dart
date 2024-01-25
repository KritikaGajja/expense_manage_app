import 'dart:ui';

import 'package:expense_manager_app/ui_helper/ui_helper.dart';
import 'package:flutter/material.dart';

class FragTransactionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.black,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )),
            Expanded(
                flex: 7,
                child: Container(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Spent this week',
                          style: mTextStyle25(mColor: Colors.grey),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                  text: '\$',
                                  style: TextStyle(
                                    fontFeatures: [FontFeature.superscripts()],
                                    fontSize: 25,
                                    color: Colors.grey,
                                  ),
                                ),
                                TextSpan(
                                    text: '205',
                                    style: mTextStyle52(mColor: Colors.black,fontWeight:FontWeight.w700 )),
                                TextSpan(
                                  text: '.50',
                                  style: TextStyle(
                                    fontFeatures: [FontFeature.superscripts()],
                                    fontSize: 25,
                                    color: Colors.black,
                                  ),
                                ),
                              ]))
                            ])
                      ],
                    ),
                  ),
                )),
            Expanded(
                flex: 12,
                child: ListView.builder(itemBuilder: (context,index){
                  return mainListItem(index,width);
                },itemCount: 10,)),
          ],
        ));
  }

  Widget mainListItem(int index,double width){
    return Padding(
      padding: const EdgeInsets.only(left: 11.0,right: 11.0),
      child: SizedBox(
        height: 300,
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: width*0.15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Today',style: mTextStyle12(mColor: Colors.grey),),
                  Text('\$7.24',style: mTextStyle12(mColor: Colors.grey),),
                ],
              ),
            ),
            Expanded(

              child: ListView.builder(itemBuilder: (context,childIndex){
                return SizedBox(
                    height: 100,
                    child: mainChildTransactionItem());
              },
              itemCount: 2,),
            )
          ],
        ),
      ),
    );
  }


  Widget mainChildTransactionItem(){
    return ListTile(
      contentPadding: EdgeInsets.all(0),
        leading:
             Icon(Icons.pets,color: Colors.black,),
        title: Text('Pets',style: mTextStyle16(mColor: Colors.black,fontWeight: FontWeight.w700),),
        subtitle: Text('Treats',style: mTextStyle16(mColor: Colors.black),),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('\$3.35',style: mTextStyle16(mColor: Colors.black,fontWeight: FontWeight.w700),),
            Text('\$383.00',style: mTextStyle12(mColor: Colors.black),)
          ],),



    );
  }

}

//
// RichText(text:TextSpan(
// ('\$', style: TextStyle(
// fontFeatures: [FontFeature.superscripts()]),
// ),
// Text('205'),
// Text(
// '.50',
// style: TextStyle(
// fontFeatures: [FontFeature.superscripts()]),
// )
// ],
