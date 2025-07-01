import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "../../logIn/logIn_view.dart";
import "/../../../theme/app_theme.dart";

class NavigateLogin extends StatelessWidget {
  const NavigateLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginView(),
          ),
        );
      },
      child: Text("Log In", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500, fontSize: 18.sp)),
    );
  }
}
