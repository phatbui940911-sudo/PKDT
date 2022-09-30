import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MenuWidget extends StatelessWidget {
  String image;

  MenuWidget({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.sp,
      height: 30.sp,
      padding: EdgeInsets.all(6.sp),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8.sp),
      ),
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
