import "package:flutter/material.dart";
import "package:flutter_fitness_app/front_end/Authentication/shared_widget/SocialAuthButton.dart";
import "package:flutter_fitness_app/front_end/Authentication/shared_widget/mailAuthButton.dart";
import "package:flutter_fitness_app/front_end/Authentication/signUp/widgets/navigate_login.dart";
import "package:flutter_fitness_app/front_end/Authentication/shared_widget/textBox.dart";
import "package:flutter_fitness_app/front_end/Authentication/signUp/widgets/signup_logic.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "../../../theme/app_theme.dart";
import "form_validation/confirm_validation.dart";
import "form_validation/email_validation.dart";
import "form_validation/password_validation.dart";


class SignupView extends StatelessWidget {
  SignupView({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();

  final String google_logo = "images/google.png";
  final String facebook_logo = "images/facebook.png";

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    print("This is formKey $formKey");
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 0.1.sh),
              Text("Sign Up", style: textTheme.displayMedium),
              Textbox(hintText: "Email", controller: emailController, validation: emailValidation,),
              Textbox(hintText: "Password", controller: passwordController, validation: passwordValidation),
              Textbox(hintText: "Confirm Password", controller: confirmController, validation: confirmValidation, passwordController: passwordController),
              SizedBox(height: 40.h),
              MailAuthButton(buttonName: "Sign Up", formKey: formKey, mailAuthLogic: signUpLogic,),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.h),
                child: Text("Or", style: textTheme.displayMedium),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SocialAuthButton(logo: google_logo),
                  SocialAuthButton(logo: facebook_logo),
                ],
              ),
              SizedBox(height: 60.h),
              Text("Already have an account?", style: textTheme.displayMedium),
              NavigateLogin(),
            ],
          ),
        ),
      ),
    );
  }
}
