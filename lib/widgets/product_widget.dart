import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 10.sp),
        child: Container(
          width: 100.w,
          height: 60.sp,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.sp),
                      height: 60.sp,
                      width: 60.sp,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.sp),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: Offset(0.3, 0.7),
                            )
                          ]),
                      child: Image.asset('assets/images/test.png'),
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Test',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '20.000đ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      color: Colors.transparent,
                      width: 27.sp,
                      height: 27.sp,
                      padding: EdgeInsets.all(8.sp),
                      child: Image.asset('assets/images/close.png'),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 8.sp),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 22.sp,
                            width: 22.sp,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 0.5.sp, color: Color(0xff3C4045)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 2,
                                    blurRadius: 3,
                                    offset: Offset(0.3, 0.7),
                                  )
                                ]),
                            child: Icon(
                              Icons.remove,
                              color: Color(0xff3C4045),
                              size: 13.sp,
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Text(
                            '1',
                            style: TextStyle(
                                color: Color(0xff3C4045), fontSize: 13.sp),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Container(
                            height: 22.sp,
                            width: 22.sp,
                            decoration: BoxDecoration(
                                color: Color(0xff3C4045),
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 0.5.sp, color: Color(0xff3C4045)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 2,
                                    blurRadius: 3,
                                    offset: Offset(0.3, 0.7),
                                  )
                                ]),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 13.sp,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
