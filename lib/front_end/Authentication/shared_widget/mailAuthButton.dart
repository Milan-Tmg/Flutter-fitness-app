import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "/../../../theme/app_theme.dart";

class MailAuthButton extends StatelessWidget {
  MailAuthButton({super.key, required this.buttonName,required this.mailAuthLogic, required this.formKey});

  String buttonName;
  final mailAuthLogic; // it's function loginLogic
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print("Mail Auth formKey: $formKey");
        mailAuthLogic(formKey: formKey);
        // if(mailAuthLogic(formKey: formKey)){
        //   print("Successfully validated form");
        // }
        // Navigator.pushReplacement(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => Placeholder(),
        //   ),
        // );
      },
      child: Container(
        height: 50.h,
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(buttonRadius),
        ),
        child: Center(
          child: Text(buttonName, style: textTheme.displaySmall),
        ),
      ),
    );
  }
}
