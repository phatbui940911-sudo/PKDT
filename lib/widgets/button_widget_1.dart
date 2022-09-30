import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ButtonWidget1 extends StatelessWidget {
  final String title;
  ButtonWidget1({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      height: 35.sp,
      decoration: BoxDecoration(
        color: Color(0xff3C4045).withOpacity(0.95),
        borderRadius: BorderRadius.circular(5.sp),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 13.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
