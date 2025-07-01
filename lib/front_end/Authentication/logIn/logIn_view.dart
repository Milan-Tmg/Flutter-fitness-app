import "package:flutter/material.dart";
import "package:flutter_fitness_app/front_end/Authentication/logIn/textBox_validation/email_validation.dart";
import "package:flutter_fitness_app/front_end/Authentication/logIn/textBox_validation/password_validation.dart";
import "package:flutter_fitness_app/front_end/Authentication/logIn/widgets/login_logic.dart";
import "package:flutter_fitness_app/front_end/Authentication/logIn/widgets/navigate_signUp.dart";
import "package:flutter_fitness_app/front_end/Authentication/shared_widget/SocialAuthButton.dart";
import "package:flutter_fitness_app/front_end/Authentication/shared_widget/mailAuthButton.dart";
import "package:flutter_fitness_app/front_end/Authentication/shared_widget/textBox.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "/../../theme/app_theme.dart";
class LoginView extends StatelessWidget {
  LoginView({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final google_logo = "images/google.png";
  final facebook_logo = "images/facebook.png";

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 0.1.sh),
              Text("Log In", style: textTheme.displayMedium),
              Textbox(hintText: "Email", controller: emailController, validation: emailValidation),
              Textbox(hintText: "Password", controller: passwordController,validation: passwordValidation,),
              SizedBox(height: 40.h),
              MailAuthButton(buttonName: "Log In",mailAuthLogic: loginLogic, formKey: formKey),
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
              Text("Don't have an account?"),
              NavigateSignup(),

            ],
          ),
        ),
      ),
    );
  }
}