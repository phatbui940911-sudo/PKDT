import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProfileWidget extends StatelessWidget {
  final String icon;
  final String title;
  final Color color;

  ProfileWidget({
    required this.icon,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: EdgeInsets.symmetric(vertical: 10.sp),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.7.sp, color: color),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 30.sp,
            width: 30.sp,
            padding: EdgeInsets.all(6.sp),
            child: Image.asset(icon),
          ),
          SizedBox(
            width: 5.sp,
          ),
          Container(
            height: 30.sp,
            padding: EdgeInsets.symmetric(vertical: 6.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.black, fontSize: 12.sp),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            width: 30.sp,
            height: 30.sp,
            padding: EdgeInsets.all(2.sp),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8.sp),
            ),
            child: Image.asset(
              'assets/images/right_arrow.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
