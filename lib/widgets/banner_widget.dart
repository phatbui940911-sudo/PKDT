import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.sp,
      width: 260.sp,
      margin: EdgeInsets.only(right: 10.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7.sp),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(3, 3),
          ),
        ],
        border: Border.all(width: 0.2.sp, color: Colors.grey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.sp),
            child: Container(
              padding: EdgeInsets.all(5.sp),
              height: 40.sp,
              width: 40.sp,
              child: Image.asset(
                'assets/images/keyboard.png',
                fit: BoxFit.cover,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7.sp),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0.0, 1.0),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 50.sp,
            width: 140.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.sp),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 8.sp, 0, 0),
                  child: Text(
                    'Bàn Phím Gì Gì Đấy',
                    style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 8.sp),
                  child: Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15.sp,
                            ),
                            SizedBox(
                              width: 2.sp,
                            ),
                            Text(
                              '2.5',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11.sp,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10.sp,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text("\$250/",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11.sp,
                                    color: Colors.amber)),
                            Text('350',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11.sp,
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough))
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 15.sp, 0),
            child: GestureDetector(
              onTap: () => {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) =>
                //             Second_Screen()))
              },
              child: Container(
                alignment: Alignment.center,
                height: 35.sp,
                width: 35.sp,
                decoration: BoxDecoration(
                    color: Color(0xff122636),
                    borderRadius: BorderRadius.circular(12.sp)),
                child: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                  size: 13.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
