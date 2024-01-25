import 'package:expense_manager_app/custom_widgets/custom_logo_widget.dart';
import 'package:expense_manager_app/custom_widgets/custom_text_field.dart';
import 'package:expense_manager_app/screens/user_onboarding/login/login_page.dart';
import 'package:expense_manager_app/ui_helper/ui_helper.dart';
import 'package:expense_manager_app/custom_widgets/custom_rounded_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var nameController=TextEditingController();
  var emailController=TextEditingController();
  var passController=TextEditingController();
  var confirmPassController=TextEditingController();

   var isLight;
   var height;
   var width;

  @override
  Widget build(BuildContext context) {
    isLight=Theme.of(context).brightness==Brightness.light;
    height=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,

     body: MediaQuery.of(context).orientation==Orientation.portrait?
     PortraitUI():landscapeUI(),
    );
  }
  Widget mainUI(){
    return LayoutBuilder(builder: (context,constraints){
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomLogoWidget(mSize: constraints.maxWidth>620?50:34, bgColor:Theme.of(context).canvasColor, iconColor: Theme.of(context).backgroundColor),
         SizedBox(
           height: 21,
         ),
            Text('Sign Up!',
              style: constraints.maxWidth > 620
                  ? mTextStyle52(
                  fontWeight: FontWeight.w900,
                  mColor:
                  isLight ? MyColor.textBColor : MyColor.textWColor)
                  : mTextStyle34(
                  fontWeight: FontWeight.w900,
                  mColor: isLight
                      ? MyColor.textBColor
                        : MyColor.textWColor),
      ),
      SizedBox(
      height: 11,
      ),
      Text('Get Started', style: constraints.maxWidth > 620
          ? mTextStyle25(
          mColor: isLight
              ? MyColor.secondaryBColor
              : MyColor.secondaryWColor)
          : mTextStyle16(
          mColor: isLight
              ? MyColor.secondaryBColor
              : MyColor.secondaryWColor),
      ),
      SizedBox(height: 21,),

      //////Name Text field//////

      CustomTextField(
      mIcon: Icons.supervised_user_circle_outlined,
      fillColor: isLight
      ? MyColor.secondaryWColor
          : MyColor.secondaryBColor,
      controller: emailController,
      bordercolor: isLight ? MyColor.bgBColor : MyColor.bgWColor),
      SizedBox(
      height: 11,
      ),

            //////Email Text field//////

            CustomTextField(
                mIcon: Icons.email_outlined,
                fillColor: isLight
                    ? MyColor.secondaryWColor
                    : MyColor.secondaryBColor,
                controller: emailController,
                bordercolor: isLight ? MyColor.bgBColor : MyColor.bgWColor),
            SizedBox(
              height: 11,
            ),

            //////Password Text field//////


            CustomTextField(
                mIcon: Icons.lock,
                fillColor: isLight
                    ? MyColor.secondaryWColor
                    : MyColor.secondaryBColor,
                controller: emailController,
                bordercolor: isLight ? MyColor.bgBColor : MyColor.bgWColor),
            SizedBox(
              height: 11,
            ),

            //////Confirm password Text field//////


            CustomTextField(
                mIcon: Icons.lock_person_outlined,
                fillColor: isLight
                    ? MyColor.secondaryWColor
                    : MyColor.secondaryBColor,
                controller: emailController,
                bordercolor: isLight ? MyColor.bgBColor : MyColor.bgWColor),
            SizedBox(
              height: 11,
            ),


            //////////////////////footer////////////////////////

            CustomRoundedButton(
              title: 'Sign Up',
              action: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ));
              },
              mWidth: double.infinity,
              mColor: isLight ? MyColor.bgBColor : MyColor.bgWColor,
              textColor: isLight ? MyColor.bgWColor : MyColor.bgBColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already having an Account?',
                  style: constraints.maxWidth > 620
                      ? mTextStyle16(
                      mColor: isLight
                          ? MyColor.secondaryBColor
                          : MyColor.secondaryWColor)
                      : mTextStyle12(
                      mColor: isLight
                          ? MyColor.secondaryBColor
                          : MyColor.secondaryWColor),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>LoginPage() ));
                    },
                    child: Text('Login now ',
                        style: constraints.maxWidth > 620
                            ? mTextStyle16(
                            fontWeight: FontWeight.w900,
                            mColor: isLight
                                ? MyColor.bgBColor
                                : MyColor.bgWColor)
                            : mTextStyle12(
                            fontWeight: FontWeight.w900,
                            mColor: isLight
                                ? MyColor.bgBColor
                                : MyColor.bgWColor)))
              ],
            )

          ],
        ),
      );
    });
  }

  Widget landscapeUI(){
    return Row(
      children: [
        Expanded(
            child: Container(
              color: isLight ? MyColor.secondaryBColor : MyColor.secondaryWColor,
              child: Center(
                child: CustomLogoWidget(
                  mSize: 70,
                  bgColor: Theme.of(context).backgroundColor,
                  iconColor: Theme.of(context).canvasColor,
                ),
              ),
            )),
        Expanded(
            child: height > 600
                ? mainUI()
                : SingleChildScrollView(
              child: mainUI(),
            ))

      ],
    );
  }

  Widget PortraitUI() {
    return height > 600
        ? mainUI()
        : SingleChildScrollView(
      child: mainUI(),
    );
  }

}
