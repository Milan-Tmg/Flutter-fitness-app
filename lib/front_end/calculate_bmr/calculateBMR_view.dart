import "package:flutter/material.dart";
import "package:flutter_fitness_app/State_mangement/user_details.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_fitness_app/front_end/calculate_bmr/widgets/activity_level.dart";
import "package:flutter_fitness_app/front_end/calculate_bmr/widgets/calculate_bmr.dart";
import "package:flutter_fitness_app/front_end/calculate_bmr/widgets/getAge.dart";
import "package:flutter_fitness_app/front_end/calculate_bmr/widgets/getGender.dart";
import "package:flutter_fitness_app/front_end/calculate_bmr/widgets/getHeight.dart";
import "package:flutter_fitness_app/front_end/calculate_bmr/widgets/getWeight.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "/../../theme/app_theme.dart";

class CalculatebmrView extends ConsumerStatefulWidget {
  const CalculatebmrView({super.key});

  @override
  ConsumerState<CalculatebmrView> createState() => _CalculatebmrViewState();
}

class _CalculatebmrViewState extends ConsumerState<CalculatebmrView> {

  @override
  Widget build(BuildContext context) {
    TextEditingController age = ref.watch(details).age;
    TextEditingController weight = ref.watch(details).weight;
    TextEditingController height = ref.watch(details).height;
    TextEditingController selected_activity = ref.watch(details).selected_activity;
    TextEditingController selectGender = ref.watch(details).selectGender;
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

