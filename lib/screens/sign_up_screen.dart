import 'package:demo_project/widgets/app_bar_widget.dart';
import 'package:demo_project/widgets/button_widget_1.dart';
import 'package:demo_project/widgets/icon_back_widget.dart';
import 'package:demo_project/widgets/text_field_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isHidden = false;
  bool isHidden2 = false;
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
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 15.sp,
                  horizontal: 10.sp,
                ),
                child: IconBackWidget(),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: 100.h - 80.sp,
                    width: 100.w,
                    padding: EdgeInsets.symmetric(horizontal: 5.sp),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sign Up',
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
                                TextFormFieldWidget(hintText: 'Username'),
                                SizedBox(
                                  height: 5.sp,
                                ),
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
                                  height: 5.sp,
                                ),
                                TextFormFieldWidget(
                                  isHiddenPassword: isHidden2,
                                  hintText: 'Confirm Password',
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isHidden2 = !isHidden2;
                                      });
                                    },
                                    child: Icon(
                                      isHidden2
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
                                Text(
                                  "By selecting Agree and continue below,",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11.sp,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "I agree to ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11.sp,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //     builder: (context) =>
                                        //         SignUpScreen(),
                                        //   ),
                                        // );
                                      },
                                      child: Text(
                                        'Term of Service and Privary Policy',
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Already have an Account? ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11.sp,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'Sign in',
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
                                  height: 25.sp,
                                ),
                                ButtonWidget1(
                                  title: 'Agree and continue',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
