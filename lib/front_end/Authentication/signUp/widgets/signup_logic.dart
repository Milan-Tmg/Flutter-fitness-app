import "package:flutter/material.dart";
import "package:flutter_fitness_app/front_end/calculate_bmr/calculateBMR_view.dart";
void signUpLogic({required GlobalKey<FormState> formKey, required BuildContext context}){
  if(formKey.currentState!.validate()){
    //sign up logic this side

    // navigate to bmr page if user is successfully authenticated
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CalculatebmrView(),
      )
    );
  }
}