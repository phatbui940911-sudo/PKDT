import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class GridB extends StatefulWidget {
  const GridB({Key? key}) : super(key: key);

  @override
  State<GridB> createState() => _GridBState();
}

class _GridBState extends State<GridB> {
  Color _favIconColor = Colors.grey;

  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Logitech G Pro X",
      "price": "\$229",
      "image": "assets/images/gprox.png",
    },
    {
      "title": "AKKO 3087 v2 One Piece",
      "price": "\$100",
      "image": "assets/images/akko_luffy.jpg",
    },
    {
      "title": "AKKO 3087 World Tour Tokyo",
      "price": "\$100",
      "image": "assets/images/akko_worldtour.jpg",
    },
    {
      "title": "Logitech G Pro X",
      "price": "\$229",
      "image": "assets/images/gprox.png",
    },
    {
      "title": "Logitech G Pro X",
      "price": "\$229",
      "image": "assets/images/gprox.png",
    },
    {
      "title": "Logitech G Pro X",
      "price": "\$229",
      "image": "assets/images/gprox.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.sp,
          mainAxisSpacing: 10.sp,
          childAspectRatio: 4.5 / 5),
      itemCount: gridMap.length,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.sp),
                color: Colors.grey.shade200,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 7.sp, vertical: 7.sp),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.sp),
                              color: Colors.white),
                          child: Image.asset(
                            'assets/images/gprox.png',
                          ),
                        ),
                        Positioned(
                            top: 5.sp,
                            right: 5.sp,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (_favIconColor == Colors.grey) {
                                    _favIconColor = Colors.redAccent;
                                  } else {
                                    _favIconColor = Colors.grey;
                                  }
                                  ;
                                });
                              },
                              child: Container(
                                height: 10.sp,
                                width: 10.sp,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0.0, 1.0),
                                      )
                                    ]),
                                child: Icon(
                                  Icons.favorite,
                                  color: _favIconColor,
                                  size: 11.sp,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 7.sp),
                    child: Text(
                      'Logitech GPro X',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                          color: Color(0xff122636)),
                    ),
                  ),
                  SizedBox(
                    height: 7.sp,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 7.sp),
                    child: Row(
                      children: [
                        Text(
                          'Keyboard',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w700,
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(
                          width: 10.sp,
                        ),
                        Text("\$229",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                                color: Colors.amber)),
                        SizedBox(
                          width: 18.sp,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xff122636)),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20.sp,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
