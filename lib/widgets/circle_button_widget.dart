import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CircleButton extends StatelessWidget {
  final String image;

  CircleButton({
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7.sp),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black.withOpacity(0.03),
        border: Border.all(
          color: Colors.white,
          width: 0.5.sp,
        ),
      ),
      child: Image.asset(
        image,
        height: 15.sp,
        width: 15.sp,
      ),
    );
  }
}
