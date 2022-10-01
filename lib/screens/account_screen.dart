import 'package:demo_project/screens/login_screen.dart';
import 'package:demo_project/widgets/app_bar_widget.dart';
import 'package:demo_project/widgets/delivery_widget.dart';
import 'package:demo_project/widgets/menu_widget.dart';
import 'package:demo_project/widgets/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        context,
        '',
        Brightness.dark,
        Colors.white,
      ),
      body: Container(
        width: 100.w,
        height: 100.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 15.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'My Profile',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp),
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LogInScreen(),
                          ),
                        );
                      },
                      child: MenuWidget(image: 'assets/images/log_out.png')),
                ],
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.sp),
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.sp),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 80.sp,
                                          height: 80.sp,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.black,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/avatar.jpg',
                                                ),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10.sp,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Xuân Phát',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13.sp,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.sp,
                                            ),
                                            Text(
                                              '0336610414',
                                              style: TextStyle(
                                                  color: Colors.grey.shade700,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 11.sp),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 80.sp,
                                        ),
                                        Container(
                                          width: 30.sp,
                                          height: 30.sp,
                                          padding: EdgeInsets.all(5.sp),
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius:
                                                BorderRadius.circular(8.sp),
                                          ),
                                          child: Image.asset(
                                            'assets/images/edit.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.sp,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.sp),
                          child: Container(
                            width: 100.w,
                            height: 80.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.sp),
                              border:
                                  Border.all(color: Colors.black, width: 1.sp),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                DeliveryWidget(
                                  image: 'assets/images/credit_card.png',
                                  title: 'To Pay',
                                ),
                                DeliveryWidget(
                                    image: 'assets/images/delivery_truck.png',
                                    title: 'To Ship'),
                                DeliveryWidget(
                                    image: 'assets/images/box.png',
                                    title: 'Complete'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Container(
                          height: 5.sp,
                          width: 100.w,
                          color: Colors.grey.shade300,
                        ),
                        ProfileWidget(
                          icon: 'assets/images/user.png',
                          title: 'Personal information',
                          color: Colors.black,
                        ),
                        ProfileWidget(
                          icon: 'assets/images/unlock.png',
                          title: 'Change password',
                          color: Colors.black,
                        ),
                        ProfileWidget(
                          icon: 'assets/images/heart.png',
                          title: 'Favorite product',
                          color: Colors.black,
                        ),
                        ProfileWidget(
                          icon: 'assets/images/language.png',
                          title: 'Language',
                          color: Colors.transparent,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
