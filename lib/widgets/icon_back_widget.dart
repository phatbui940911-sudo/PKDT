import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class IconBackWidget extends StatelessWidget {
  final Color? color;
  IconBackWidget({this.color});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        color: Colors.transparent,
        child: Icon(
          Icons.arrow_back_ios,
          size: 18.sp,
          color: color ?? Colors.white,
        ),
      ),
    );
  }
}
