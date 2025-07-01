import "package:flutter/material.dart";
import "package:flutter_fitness_app/front_end/Authentication/signUp/signUp_view.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "/../../../theme/app_theme.dart";

class NavigateSignup extends StatelessWidget {
  const NavigateSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SignupView(),
          ),
        );
      },
      child: Text("Sign Up", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500, fontSize: 18.sp)),
    );
  }
}
