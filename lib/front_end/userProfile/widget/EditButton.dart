import "package:flutter_fitness_app/State_mangement/user_details.dart";
import "package:flutter_fitness_app/front_end/calculate_bmr/calculateBMR_view.dart";
import "package:flutter_fitness_app/theme/app_theme.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class Editbutton extends ConsumerWidget {
  const Editbutton({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: (){
        Edit_function(ref: ref, context: context);
      },
      child: Container(
        height: 50.h,
        width: 1.sw,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(buttonRadius),
        ),
        child: Center(
          child: Text("EDIT", style: textTheme.displaySmall),
        ),
      ),
    );
  }
}

// button's working mechanism
void Edit_function({required WidgetRef ref, required BuildContext context}){
  // remove this dummy data and use actual data from database
  ref.read(details).age.text = "22";
  ref.watch(details).weight.text = "60";
  ref.watch(details).height.text = "170";
  ref.watch(details).selectGender.text = "Male";
  ref.watch(details).selected_activity.text = "Sedentary";

  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => CalculatebmrView())
  );
}
