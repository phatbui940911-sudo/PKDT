import 'dart:ffi';

import 'package:demo_project/common/widgets/dialogs/dialog_wrapper.dart';
import 'package:demo_project/models/enum/slide_model.dart';
import 'package:demo_project/screens/bottom_nav_screen.dart';
import 'package:demo_project/screens/home_screen.dart';
import 'package:demo_project/screens/main_screen.dart';
import 'package:demo_project/screens/sign_up_screen.dart';
import 'package:demo_project/widgets/app_bar_widget.dart';
import 'package:demo_project/widgets/button_widget_1.dart';
import 'package:demo_project/widgets/circle_button_widget.dart';
import 'package:demo_project/widgets/icon_back_widget.dart';
import 'package:demo_project/widgets/text_field_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool isHidden = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        context,
        '',
        Brightness.light,
        Colors.black,
      ),
      body: Container(
        width: 100.w,
        height: 100.h,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background_2.jpg'),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.sp,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.sp),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  child: Container(
                    color: Colors.transparent,
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 18.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Text(
                'Sign In',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Container(
                width: 100.w,
                padding: EdgeInsets.symmetric(vertical: 15.sp),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.45),
                    borderRadius: BorderRadius.circular(8.sp)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormFieldWidget(hintText: 'Email'),
                      SizedBox(
                        height: 5.sp,
                      ),
                      TextFormFieldWidget(
                        isHiddenPassword: isHidden,
                        hintText: 'Password',
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isHidden = !isHidden;
                            });
                          },
                          child: Icon(
                            isHidden
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: Colors.white,
                            size: 12.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.sp,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNav(),
                            ),
                          );
                        },
                        child: ButtonWidget1(
                          title: 'Continue',
                        ),
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Or',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleButton(image: 'assets/images/ic_google.png'),
                            SizedBox(
                              width: 20.sp,
                            ),
                            CircleButton(
                                image: 'assets/images/ic_facebook.png'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11.sp,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
                                ),
                              );
                              // dialogAnimationWrapper(
                              //   borderRadius: 10.sp,
                              //   slideFrom: SlideMode.bot,
                              //   child: SignUpScreen(),
                              //   context: context,
                              // );
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Color(0xff0D0F12),
                                fontWeight: FontWeight.w700,
                                fontSize: 11.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Text(
                        'Forgot your password?',
                        style: TextStyle(
                          color: Color(0xff0D0F12),
                          fontWeight: FontWeight.w700,
                          fontSize: 11.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
