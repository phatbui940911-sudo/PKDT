import 'package:demo_project/models/color_model.dart';
import 'package:demo_project/widgets/app_bar_widget.dart';
import 'package:demo_project/widgets/menu_widget.dart';
import 'package:flutter/material.dart';

import 'package:readmore/readmore.dart';
import 'package:sizer/sizer.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _Detail_ScreenState();
}

class _Detail_ScreenState extends State<DetailScreen> {
  Color _favIconColor = Color(0xff0D0F12);
  int dem = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarWidget(
        context,
        '',
        Brightness.dark,
        Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.sp),
        child: Container(
          width: 100.w,
          height: 100.h,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: MenuWidget(image: 'assets/images/back.png')),
                    Spacer(),
                    Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailScreen(),
                                ),
                              );
                            },
                            child: MenuWidget(
                                image: 'assets/images/shopping_cart.png')),
                        // SizedBox(
                        //   width: 10.sp,
                        // ),
                        // Container(
                        //   width: 28.sp,
                        //   height: 28.sp,
                        //   decoration: BoxDecoration(
                        //     color: Colors.grey.shade200,
                        //     shape: BoxShape.circle,
                        //     image: DecorationImage(
                        //         image: AssetImage(
                        //           'assets/images/avatar.jpg',
                        //         ),
                        //         fit: BoxFit.cover),
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20.sp),
                        Container(
                          height: 270.sp,
                          width: 95.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.sp),
                            image: DecorationImage(
                                image: AssetImage('assets/images/ghe.jpg'),
                                fit: BoxFit.cover),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 10.sp,
                                bottom: 10.sp,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Razer Iskur',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(height: 8.sp),
                                    Text('Chair',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  height: 65.sp,
                                  width: 85.sp,
                                  decoration: BoxDecoration(
                                    color: Color(0xff0D0F12),
                                    borderRadius: BorderRadius.circular(10.sp),
                                    border: Border.all(
                                        color: Colors.white, width: 7.sp),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 10.sp,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 13.sp,
                                          ),
                                          SizedBox(
                                            width: 5.sp,
                                          ),
                                          Text(
                                            '6.5',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12.sp),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5.sp,
                                      ),
                                      Text(
                                        '250 review',
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Text(
                          'Description',
                          style: TextStyle(
                              color: Color(0xff0D0F12),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        ReadMoreText(
                          "Unlike most gaming chairs which have lumbar pillows that shift over time or fixed supports that can't be adjusted, the Razer Iskur provides total lower back support with a built-in, fully adjustable lumbar curve that closely aligns to your spine—ensuring ideal gaming posture for maximum comfort in gaming marathons.",
                          trimLines: 4,
                          textAlign: TextAlign.justify,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: " Read More... ",
                          trimExpandedText: " Show Less ",
                          lessStyle: TextStyle(
                              color: Color(0xff0D0F12),
                              fontWeight: FontWeight.w500),
                          moreStyle: TextStyle(
                              color: Color(0xff0D0F12),
                              fontWeight: FontWeight.w500),
                          style: TextStyle(color: Color(0xffC3C2BE)),
                        ),
                        SizedBox(
                          height: 20.sp,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    'Color',
                                    style: TextStyle(
                                        color: Color(0xff0D0F12),
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    width: 15.sp,
                                  ),
                                  Container(
                                    height: 20.sp,
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: colors.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              if (!colors[index].isCheck!) {
                                                colors[index].isCheck =
                                                    !colors[index].isCheck!;

                                                colors
                                                    .asMap()
                                                    .forEach((i, color) {
                                                  if (i != index) {
                                                    color.isCheck = false;
                                                  }
                                                });
                                              }
                                            });
                                          },
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 10.sp),
                                            child: Container(
                                              alignment: Alignment.center,
                                              width: 25.sp,
                                              height: 25.sp,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: colors[index].color),
                                              child: Visibility(
                                                  visible:
                                                      colors[index].isCheck!,
                                                  child: Icon(
                                                    Icons.circle,
                                                    color: Colors.white,
                                                    size: 16.sp,
                                                  )),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 25.sp,
                              width: 60.sp,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.sp),
                                  color: Color(0xff0D0F12)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        dem++;
                                      });
                                    },
                                    child: Container(
                                        height: 18.sp,
                                        width: 18.sp,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.sp),
                                            color: Colors.white),
                                        child: Icon(
                                          Icons.add,
                                          color: Color(0xff0D0F12),
                                          size: 15.sp,
                                        )),
                                  ),
                                  Text(
                                    '$dem',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 11.sp),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      if (dem == 0) {
                                        setState(() {
                                          return;
                                        });
                                      } else {
                                        setState(() {
                                          dem--;
                                        });
                                      }
                                    },
                                    child: Container(
                                        height: 18.sp,
                                        width: 18.sp,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.sp),
                                            color: Colors.white),
                                        child: Icon(
                                          Icons.remove,
                                          color: Color(0xff0D0F12),
                                          size: 15.sp,
                                        )),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.sp,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (_favIconColor == Color(0xff0D0F12)) {
                            _favIconColor = Colors.redAccent;
                          } else {
                            _favIconColor = Color(0xff0D0F12);
                          }
                          ;
                        });
                      },
                      child: Container(
                        height: 35.sp,
                        width: 35.sp,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0.0, 1.0),
                              )
                            ]),
                        child: Icon(
                          Icons.favorite_border_outlined,
                          color: _favIconColor,
                        ),
                      ),
                    ),
                    Container(
                      height: 40.sp,
                      width: 180.sp,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.sp),
                          color: Color(0xff0D0F12)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Add to card',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 12.sp),
                          ),
                          Container(
                            height: 25.sp,
                            width: 25.sp,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.shopping_cart_outlined,
                              color: Color(0xff0D0F12),
                            ),
                          ),
                        ],
                      ),
                    ),
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
