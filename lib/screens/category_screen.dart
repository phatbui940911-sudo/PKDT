import 'package:demo_project/screens/cart_screen.dart';
import 'package:demo_project/widgets/app_bar_widget.dart';
import 'package:demo_project/widgets/grid_category.dart';
import 'package:demo_project/widgets/menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'detail_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

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
        height: 100.h,
        width: 100.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 15.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CartScreen(),
                              ),
                            );
                          },
                          child: MenuWidget(
                              image: 'assets/images/shopping_cart.png')),
                      SizedBox(
                        width: 10.sp,
                      ),
                      Container(
                        width: 28.sp,
                        height: 28.sp,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/avatar.jpg',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.sp),
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [GridCategory()],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
