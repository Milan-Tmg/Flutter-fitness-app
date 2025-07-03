import "package:flutter/material.dart";
import "package:flutter_fitness_app/front_end/calculate_bmr/calculateBMR_view.dart";
void loginLogic({required GlobalKey<FormState> formKey, required BuildContext context}){
  if(formKey.currentState!.validate()){
    // login logic here.

    //if user successfully gets authenticate navigate to bmr calculation page
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => CalculatebmrView(),
      ),
    );
  }
}