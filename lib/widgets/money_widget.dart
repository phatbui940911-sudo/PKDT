import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MoneyWidget extends StatelessWidget {
  final String feeTitle;
  final String money;

  MoneyWidget({required this.feeTitle, required this.money});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: EdgeInsets.symmetric(vertical: 10.sp),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.7.sp, color: Colors.black),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
                  feeTitle,
                  style: TextStyle(
                      color: Color(0xff3C4045),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            child: Row(
              children: [
                Text(
                  money,
                  style: TextStyle(
                      color: Color(0xff3C4045),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 5.sp,
                ),
                Text(
                  'VNĐ',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
