import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

AppBar appBarWidget(
  context,
  String? title,
  Brightness? brightness,
  Color? sttbcolor,
) {
  return AppBar(
    toolbarHeight: 0.0,
    elevation: 0.0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: sttbcolor ?? Colors.white,
      statusBarIconBrightness: brightness ?? Brightness.dark,
    ),
  );
}
