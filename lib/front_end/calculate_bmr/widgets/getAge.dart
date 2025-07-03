import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "/../../theme/app_theme.dart";

class Getage extends StatelessWidget {
  Getage({super.key, required this.age});
  TextEditingController age;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Age : ", style: textTheme.displayMedium),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20.h),
          height: 50.h,
          width: 0.65.sw,
          child: TextField(
            controller: age,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 20.w),
              fillColor: Colors.white,
              filled: true,
              border: border(),
            ),
          ),
        ),
      ],
    );
  }
}

OutlineInputBorder border() => OutlineInputBorder(
  borderRadius: BorderRadius.circular(textFieldRadius),
  borderSide: BorderSide(color: Colors.black, width: 0.5.sp),
);
