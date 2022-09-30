import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class TextFormFieldWidget extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  bool? isHiddenPassword;

  TextFormFieldWidget({
    required this.hintText,
    this.suffixIcon,
    this.isHiddenPassword = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.grey.shade400,
      obscureText: !isHiddenPassword!,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.black, fontSize: 12.sp),
        filled: false,
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade400,
          ),
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade400,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade400,
          ),
        ),
        focusColor: Colors.grey.shade400,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade400,
          ),
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
