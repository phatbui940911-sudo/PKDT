import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DeliveryWidget extends StatelessWidget {
  final String image;
  final String title;

  DeliveryWidget({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 80.sp,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10.sp,
          ),
          Container(
            height: 35.sp,
            width: 35.sp,
            padding: EdgeInsets.all(6.sp),
            child: Image.asset(image),
          ),
          Text(
            title,
            style: TextStyle(color: Colors.black, fontSize: 10.sp),
          )
        ],
      ),
    );
  }
}
