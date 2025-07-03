import "package:flutter/material.dart";
import "package:flutter_fitness_app/front_end/calculate_bmr/widgets/activity_level.dart";
import "package:flutter_fitness_app/front_end/calculate_bmr/widgets/calculate_bmr.dart";
import "package:flutter_fitness_app/front_end/calculate_bmr/widgets/getAge.dart";
import "package:flutter_fitness_app/front_end/calculate_bmr/widgets/getGender.dart";
import "package:flutter_fitness_app/front_end/calculate_bmr/widgets/getHeight.dart";
import "package:flutter_fitness_app/front_end/calculate_bmr/widgets/getWeight.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "/../../theme/app_theme.dart";

class CalculatebmrView extends StatefulWidget {
  const CalculatebmrView({super.key});

  @override
  State<CalculatebmrView> createState() => _CalculatebmrViewState();
}

class _CalculatebmrViewState extends State<CalculatebmrView> {

  // variables to store user data
  TextEditingController selectGender = TextEditingController();
  TextEditingController age= TextEditingController() ;
  TextEditingController weight = TextEditingController();
  TextEditingController height = TextEditingController();
  TextEditingController selected_activity = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 1.sh,
        width: 1.sw,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ListView(
            children: [
              SizedBox(height: 0.05.sh),
              Center(child: Text("Enter Details", style: textTheme.displayLarge)),
              Getage(age: age),
              Getgender(selectedGender: selectGender),
              Getweight(weight: weight),
              Getheight(height: height),// what the heck ?
              ActivityLevel(selected_activity: selected_activity),
              SizedBox(height: 0.15.sh),
              CalculateBmr(
                age:age,
                weight: weight,
                height: height,
                selected_activity: selected_activity,
                selectGender: selectGender,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

