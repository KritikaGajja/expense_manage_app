import 'package:expense_manager_app/custom_widgets/custom_logo_widget.dart';
import 'package:expense_manager_app/custom_widgets/custom_rounded_button.dart';
import 'package:expense_manager_app/custom_widgets/custom_text_field.dart';
import 'package:expense_manager_app/screens/home/home_page.dart';
import 'package:expense_manager_app/screens/user_onboarding/signup/sign_up.dart';
import 'package:expense_manager_app/ui_helper/ui_helper.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var passController = TextEditingController();

  var isLight;

  var height;

  var width;

  @override
  Widget build(BuildContext context) {
    isLight = Theme.of(context).brightness == Brightness.light;
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    print(width);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: MediaQuery.of(context).orientation == Orientation.portrait
          ? PortraitUI()
          : landscapeUI(),
    );
  }

  Widget mainUI() {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(constraints.maxWidth);
        print(constraints.maxHeight);
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(21.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomLogoWidget(
                  mSize: constraints.maxWidth > 620 ? 50 : 34,
                  bgColor: Theme.of(context).canvasColor,
                  iconColor: Theme.of(context).backgroundColor,
                ),
                SizedBox(
                  height: 21,
                ),
                Text(
                  "Hello Again",
                  style: constraints.maxWidth > 620
                      ? mTextStyle52(
                          fontWeight: FontWeight.w900,
                          mColor:
                              isLight ? MyColor.textBColor : MyColor.textWColor)
                      : mTextStyle43(
                          fontWeight: FontWeight.w900,
                          mColor: isLight
                              ? MyColor.textBColor
                              : MyColor.textWColor),
                ),
                SizedBox(
                  height: 11,
                ),
                Text(
                  'Welcome back! you\'ve been missed',
                  style: constraints.maxWidth > 650
                      ? mTextStyle25(
                          mColor: isLight
                              ? MyColor.secondaryBColor
                              : MyColor.secondaryWColor)
                      : mTextStyle16(
                          mColor: isLight
                              ? MyColor.secondaryBColor
                              : MyColor.secondaryWColor),
                ),
                //////////////////////////Input fields////////////////////

                SizedBox(
                  height: 21,
                ),
                CustomTextField(
                    mIcon: Icons.email_outlined,
                 //   obscure: false,
                    //obscure: false,
                    fillColor: isLight
                        ? MyColor.secondaryWColor
                        : MyColor.secondaryBColor,
                    controller: emailController,
                    bordercolor:
                        isLight ? MyColor.bgBColor : MyColor.textWColor),
                SizedBox(
                  height: 21,
                ),
                CustomTextField(
                    mIcon: Icons.lock_outline,
                  //  obscure: false,
                    fillColor: isLight
                        ? MyColor.secondaryWColor
                        : MyColor.secondaryBColor,
                    controller: passController,
                    bordercolor:
                        isLight ? MyColor.bgBColor : MyColor.textWColor),

                ///////////////////////footer/////////////////////////
                SizedBox(
                  height: 21,
                ),

                CustomRoundedButton(
                  title: 'Login',
                  action: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage()));
                  },
                  mWidth: double.infinity,
                  mColor: isLight ? MyColor.bgBColor : MyColor.bgWColor,
                  textColor: isLight ? MyColor.bgWColor : MyColor.bgBColor,
                ),
                SizedBox(
                  height: 11,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Create a new Account?',
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
                    SizedBox(
                      width: 2,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpPage()));
                        },
                        child: Text(
                          'sign-up now',
                          style: width > 620
                              ? mTextStyle16(
                                  fontWeight: FontWeight.w900,
                                  mColor: isLight
                                      ? MyColor.bgBColor
                                      : MyColor.bgWColor)
                              : mTextStyle12(
                                  fontWeight: FontWeight.w900,
                                  mColor: isLight
                                      ? MyColor.bgBColor
                                      : MyColor.bgWColor),
                        ))
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget landscapeUI() {
    return Row(
      children: [
        Expanded(
          child: Container(
              color:
                  isLight ? MyColor.secondaryBColor : MyColor.secondaryWColor,
              child: Center(
                child: CustomLogoWidget(
                  mSize: 70,
                  bgColor: Theme.of(context).backgroundColor,
                  iconColor: Theme.of(context).canvasColor,
                ),
              )),
        ),
        Expanded(
          child: height > 600
              ? mainUI()
              : SingleChildScrollView(
                  child: mainUI(),
                ),
        )
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
