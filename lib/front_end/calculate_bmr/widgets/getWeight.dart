import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "/../../theme/app_theme.dart";

class Getweight extends StatelessWidget {
  Getweight({super.key, required this.weight});
  TextEditingController weight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Weight : ", style: textTheme.displayMedium),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20.h),
          height: 50.h,
          width: 0.65.sw,
          child: TextField(
            controller: weight,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              suffixIcon: SizedBox(
                height: 50.h,
                width: 10.h,
                child: Center(child: Text("Kg")),
              ),
              suffixStyle: TextStyle(color: Colors.grey),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(textFieldRadius),
                borderSide: BorderSide(color: Colors.black, width: 0.5.sp),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
