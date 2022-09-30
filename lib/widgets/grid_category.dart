import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class GridCategory extends StatefulWidget {
  const GridCategory({Key? key}) : super(key: key);

  @override
  State<GridCategory> createState() => _GridCategoryState();
}

class _GridCategoryState extends State<GridCategory> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.sp),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.sp,
          mainAxisSpacing: 10.sp,
          childAspectRatio: 6 / 5.2,
        ),
        itemCount: 8,
        itemBuilder: (context, index) {
          return Container(
            // padding: EdgeInsets.all(30.sp),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.sp),
                color: Color(0xff3C4045),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(3, 3)),
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 60.sp,
                  padding: EdgeInsets.all(10.sp),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.asset('assets/images/monitor.png'),
                ),
                SizedBox(
                  height: 8.sp,
                ),
                Text(
                  'Màn Hình',
                  style: TextStyle(fontSize: 11.sp, color: Colors.white),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
