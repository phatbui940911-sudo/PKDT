import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class InfoWidget extends StatelessWidget {
  final String text;

  InfoWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.sp,
      width: 100.w,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(5.sp),
        border: Border.all(width: 0.5.sp, color: Colors.grey.shade800),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.sp),
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 13.sp,
          ),
        ),
      ),
    );
  }
}
