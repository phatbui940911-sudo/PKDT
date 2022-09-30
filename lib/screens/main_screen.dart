import 'package:demo_project/models/categories_model.dart';
import 'package:demo_project/screens/detail_screen.dart';
import 'package:demo_project/widgets/app_bar_widget.dart';
import 'package:demo_project/widgets/banner_widget.dart';
import 'package:demo_project/widgets/gridcate.dart';
import 'package:demo_project/widgets/icon_widget.dart';
import 'package:demo_project/widgets/menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        context,
        '',
        Brightness.dark,
        Colors.white,
      ),
      body: Container(
        width: 100.w,
        height: 100.h,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 15.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MenuWidget(image: 'assets/images/menu.png'),
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
                      SizedBox(
                        width: 10.sp,
                      ),
                      Container(
                        width: 28.sp,
                        height: 28.sp,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/avatar.jpg',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
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
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.sp),
                        child: Text(
                          'Phụ kiện công nghệ \ntốt nhất Việt Nam.',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w700,
                              height: 1.2.sp),
                        ),
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.sp),
                        child: Container(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 32.sp,
                                width: 70.w,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(8.sp)),
                                child: TextFormField(
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    hintText: 'Tìm kiếm',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    prefixIcon: Icon(
                                      Icons.search_outlined,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              MenuWidget(image: 'assets/images/filter.png'),
                              SizedBox(
                                width: 2.sp,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
                      Container(
                        height: 80.sp,
                        child: ListView.builder(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.sp,
                            vertical: 8.sp,
                          ),
                          shrinkWrap: true,
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return BannerWidget();
                          },
                        ),
                      ),
                      // BannerWidget(),
                      SizedBox(
                        height: 30.sp,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.sp),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Categories',
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              SizedBox(height: 20.sp),
                              Container(
                                height: 40.sp,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: categories.length,
                                    padding: EdgeInsets.only(right: 16.sp),
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (!categories[index].ischeck!) {
                                              categories[index].ischeck =
                                                  !categories[index].ischeck!;

                                              categories
                                                  .asMap()
                                                  .forEach((i, category) {
                                                if (i != index) {
                                                  category.ischeck = false;
                                                }
                                              });
                                            }
                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: categories[index].ischeck!
                                                  ? Color(0xff122636)
                                                  : Colors.grey.shade300,
                                              borderRadius:
                                                  BorderRadius.circular(8.sp),
                                              border: Border.all(
                                                width: 0.5.sp,
                                                color:
                                                    categories[index].ischeck!
                                                        ? Color(0xff122636)
                                                        : Colors.black,
                                              )),
                                          margin: EdgeInsets.only(right: 10.sp),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10.sp),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Visibility(
                                                  visible: categories[index]
                                                      .ischeck!,
                                                  child: Icon(
                                                    categories[index].icon,
                                                    color: Colors.grey.shade300,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5.sp,
                                                ),
                                                Text(
                                                  categories[index].title,
                                                  style: TextStyle(
                                                      color: categories[index]
                                                              .ischeck!
                                                          ? Colors.grey.shade300
                                                          : Color(0xff122636),
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                              ),
                              SizedBox(
                                height: 20.sp,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Top Keyboard',
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          'View All',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 11.sp),
                                        ),
                                        SizedBox(
                                          width: 7.sp,
                                        ),
                                        Container(
                                          height: 12.sp,
                                          width: 12.sp,
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(3.sp)),
                                          alignment: Alignment.center,
                                          child: Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 6.sp,
                                            color: Colors.grey.shade200,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20.sp,
                              ),
                              GridB(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        fixedColor: Color(0xff122636),
        type: BottomNavigationBarType.fixed,
        iconSize: 20.sp,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.computer_outlined), title: Text('Category')),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), title: Text('Messenger')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), title: Text('Account'))
        ],
      ),
    );
  }
}
