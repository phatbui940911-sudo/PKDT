import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class IconWidget extends StatelessWidget {
  IconData iconData;

  IconWidget({required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.sp),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(5.sp),
      ),
      child: Icon(
        iconData,
        color: Colors.black,
        size: 18.sp,
      ),
    );
  }
}
