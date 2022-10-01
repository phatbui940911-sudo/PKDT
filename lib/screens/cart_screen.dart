import 'package:demo_project/models/color_model.dart';
import 'package:demo_project/widgets/app_bar_widget.dart';
import 'package:demo_project/widgets/banner_widget.dart';
import 'package:demo_project/widgets/button_widget_1.dart';
import 'package:demo_project/widgets/info_widget.dart';
import 'package:demo_project/widgets/menu_widget.dart';
import 'package:demo_project/widgets/money_widget.dart';
import 'package:demo_project/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context, '', Brightness.dark, Colors.white),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.sp),
        child: Padding(
          padding: EdgeInsets.only(top: 10.sp),
          child: Container(
            height: 100.h,
            width: 100.w,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MenuWidget(image: 'assets/images/back.png'),
                      Text(
                        'Giỏ hàng của bạn',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      MenuWidget(image: 'assets/images/delete.png')
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      width: 100.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.sp),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Thông tin giao hàng',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 20.sp,
                                  ),
                                  InfoWidget(text: '0336610414'),
                                  SizedBox(
                                    height: 15.sp,
                                  ),
                                  InfoWidget(
                                      text:
                                          'B3/9, khu phố 10, phường Tân Phong, Biên Hòa - Đồng Nai')
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.sp,
                          ),
                          Container(
                            height: 5.sp,
                            width: 100.w,
                            color: Colors.grey.shade300,
                          ),
                          SizedBox(
                            height: 10.sp,
                          ),
                          Container(
                            child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: 2,
                                itemBuilder: (context, index) {
                                  return ProductWidget();
                                }),
                          ),
                          SizedBox(
                            height: 10.sp,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.sp),
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 40.sp,
                                  decoration: BoxDecoration(
                                    color: Color(0xff3C4045).withOpacity(0.95),
                                    borderRadius: BorderRadius.circular(5.sp),
                                  ),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15.sp),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Mã khuyến mãi',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          height: 25.sp,
                                          width: 75.sp,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(5.sp),
                                          ),
                                          child: Text(
                                            'Áp dụng',
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xff3C4045)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                MoneyWidget(
                                    feeTitle: 'Tiền sản phẩm',
                                    money: '3.410.000'),
                                MoneyWidget(feeTitle: 'Phí ship', money: '0'),
                                SizedBox(
                                  height: 10.sp,
                                ),
                                ButtonWidget1(
                                  title: 'Thanh toán giỏ hàng',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.sp,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
