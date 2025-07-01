import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:flutter/material.dart";
import "../../../theme/app_theme.dart";

class Textbox extends StatelessWidget {
  Textbox({super.key, required this.hintText, required this.controller, required this.validation, this.passwordController});
  String hintText;
  TextEditingController controller;
  final validation;
  TextEditingController? passwordController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 15.h),

      child: SizedBox(
        height: 50.h,
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 15.w),
            hintText: hintText,
            fillColor: Colors.white,
            filled: true,
            border: border(),
          ),
          validator: (value){
            if (passwordController != null){
              String password = passwordController!.text;
              return validation(value,password);
            }
            else{
              return validation(value);
            }
          },
        ),
      ),
    );
  }
}

OutlineInputBorder border() => OutlineInputBorder(
  borderRadius: BorderRadius.circular(textFieldRadius),
  borderSide: BorderSide(color: Colors.black, width: 0.5),
);
