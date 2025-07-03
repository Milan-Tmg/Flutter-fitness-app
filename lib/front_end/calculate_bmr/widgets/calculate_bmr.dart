import "package:flutter/material.dart";
import "package:flutter_fitness_app/front_end/calculate_bmr/widgets/BMR_calculation_logic.dart";
import "dart:async";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "/theme/app_theme.dart";

class CalculateBmr extends StatefulWidget {
  CalculateBmr({super.key,
    required this.selected_activity,
    required this.age,
    required this.weight,
    required this.height,
    required this.selectGender,
  });
  TextEditingController selectGender;
  TextEditingController age;
  TextEditingController weight ;
  TextEditingController height ;
  TextEditingController selected_activity ;

  @override
  State<CalculateBmr> createState() => _CalculateBmrState();
}

class _CalculateBmrState extends State<CalculateBmr> {
  double showInfo = 0;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        BRM_calculation(age: widget.age, weight: widget.weight, height: widget.height, activity: widget.selected_activity, gender: widget.selectGender);
        setState(() {
          showInfo = 1;
        });

        Timer(
          Duration(seconds: 5),
            (){
            setState(() {
              showInfo = 0;
            });
            }
        );
      },
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            height: 50.h,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(buttonRadius),
            ),
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("CALCULATE BMR ",style: textTheme.displaySmall),
                  Icon(Icons.info_outline, color: Colors.black),
                ],
              ),
            ),
          ),
          AnimatedOpacity(
            duration: Duration(milliseconds: 100),
            opacity: showInfo,
            child: BMR_info(),
          ),
        ],
      ),
    );
  }
}

Container BMR_info(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
    margin: EdgeInsets.only(bottom: 0.1.sh),
    width: 0.5.sw,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(buttonRadius),
      border: Border.all(color: Colors.black, width: 0.5),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("What is BMR?", style: TextStyle(color: Colors.red)),
        Text("BMR (Basal Metabolic Rate) is the number of calories your body burns at rest. It helps you know how much to eat to maintain, lose, or gain weight."),
      ],
    ),
  );
}
