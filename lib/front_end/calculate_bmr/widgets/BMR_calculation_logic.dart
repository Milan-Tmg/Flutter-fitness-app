import "package:flutter/material.dart";
import "package:flutter_fitness_app/front_end/calculate_bmr/TDEE_factor/Multiplication_factor.dart";

void BRM_calculation({
  required TextEditingController age,
  required TextEditingController weight,
  required TextEditingController height,
  required TextEditingController activity,
  required TextEditingController gender,
}){
  if(age.text.isNotEmpty && weight.text.isNotEmpty && height.text.isNotEmpty & gender.text.isNotEmpty)
    {
      double ageValue = double.parse(age.text);
      double weightValue = double.parse(weight.text);
      double heightValue = double.parse(height.text);
      double bmr = 0;

      if(gender.text == "male"){
        bmr = 10*weightValue + 6.25* heightValue - 5*ageValue +5;
      }else{
        bmr = 10*weightValue + 6.25 * heightValue  - 5 *ageValue - 161;
      }


      double tedd = activity_level[activity.text != ""? activity.text: "Sedentary"]! * bmr;
      print("TEDD : $tedd");
    }

  // pass this data to database
}