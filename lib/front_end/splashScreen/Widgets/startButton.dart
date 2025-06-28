import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/theme/app_theme.dart';

GestureDetector getStarted() => GestureDetector(
  child: Container(
    decoration: BoxDecoration(
      color: buttonColor,
      borderRadius: BorderRadius.circular(bottonRadius),
    ),
    margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
    child: Center(
      child: Text(
        "GET STARTED",
        style: textTheme.displaySmall,
      ),
    ),
  ),
);