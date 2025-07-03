import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "/theme/app_theme.dart";

class Getheight extends StatelessWidget {
  Getheight({super.key, required this.height});
  TextEditingController height;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Height : ", style : textTheme.displayMedium),
        Container(
          margin: EdgeInsets.only(bottom: 20.h),
          height: 50.h,
          width: 0.65.sw,
          child: TextField(
            controller: height,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
              suffixIcon: Container(
                height: 50.h,
                width: 10.w,
                child: Center(child: Text("cm")),
              ),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(buttonRadius),
                borderSide: BorderSide(color: Colors.black, width: 0.5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
