import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "/theme/app_theme.dart";

class Navigatebackpage extends StatelessWidget {
  const Navigatebackpage({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios, color: Colors.black,size: 20.sp),
      onPressed: (){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => Placeholder(), // navigate to home page
          ),
        );
      }
    );
  }
}
