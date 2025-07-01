import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "../../../theme/app_theme.dart";

class SocialAuthButton extends StatelessWidget {
  SocialAuthButton({super.key, required this.logo});
  final String logo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 80.w,
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(buttonRadius),
      ),
      child: Image.asset(logo),
    );
  }
}
