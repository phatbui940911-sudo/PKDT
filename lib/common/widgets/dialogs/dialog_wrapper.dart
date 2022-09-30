import 'package:demo_project/constants/application.dart';
import 'package:demo_project/models/enum/slide_model.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Future dialogAnimationWrapper({
  SlideMode slideFrom = SlideMode.left,
  child,
  duration = 400,
  paddingTop = 0.0,
  paddingBottom = 0.0,
  backgroundColor = Colors.white,
  paddingHorizontal = 15.0,
  borderRadius = 25.0,
  dismissible = true,
  barrierColor,
  timeForDismiss,
  required BuildContext context,
}) {
  var beginOffset = Offset(-1, 0);
  switch (slideFrom) {
    case SlideMode.left:
      beginOffset = Offset(-1, 0);
      break;
    case SlideMode.right:
      beginOffset = Offset(1, 0);
      break;
    case SlideMode.top:
      beginOffset = Offset(0, -1);
      break;
    default:
      beginOffset = Offset(0, 1);
      break;
  }

  if (timeForDismiss != null) {
    Future.delayed(Duration(milliseconds: timeForDismiss), () {
      Application.isShowingError = false;
      Navigator.pop(context);
    });
  }

  return showGeneralDialog(
    barrierLabel: "Barrier",
    barrierDismissible: dismissible,
    barrierColor: barrierColor ?? Colors.black.withOpacity(0.5),
    transitionDuration: Duration(milliseconds: duration),
    context: context,
    pageBuilder: (_, __, ___) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        insetPadding: EdgeInsets.only(
          left: paddingHorizontal,
          right: paddingHorizontal,
          top: paddingTop,
          bottom: paddingBottom,
        ),
        child: Container(
          constraints: BoxConstraints(maxWidth: 330.sp),
          child: child,
        ),
        backgroundColor: backgroundColor,
      );
    },
    transitionBuilder: (_, anim, __, child) {
      return SlideTransition(
        position: Tween(begin: beginOffset, end: Offset(0, 0)).animate(anim),
        child: child,
      );
    },
  );
}
