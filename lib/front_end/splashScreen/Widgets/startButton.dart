import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/front_end/Authentication/signUp/signUp_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/theme/app_theme.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SignupView()
          ),
        );
      },


      child: Container(
        height: 50.h,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(buttonRadius),
        ),
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: Center(
          child: Text(
            "GET STARTED",
            style: textTheme.displaySmall,
          ),
        ),
      ),
    );
  }
}
