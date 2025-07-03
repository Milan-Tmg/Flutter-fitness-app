import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:dropdown_button2/dropdown_button2.dart";
import "/theme/app_theme.dart";
import "package:flutter_fitness_app/front_end/calculate_bmr/TDEE_factor/Multiplication_factor.dart";

class ActivityLevel extends StatefulWidget {
  ActivityLevel({super.key, required this.selected_activity});
  TextEditingController selected_activity;

  @override
  State<ActivityLevel> createState() => _ActivityLevelState();
}

class _ActivityLevelState extends State<ActivityLevel> {
  String? activity = "Sedentary";

  List<String> available_activityLevel = activity_level.keys.toList();

  @override
  Widget build(BuildContext context) {
    print(available_activityLevel);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Activity Level : ",style: textTheme.displayMedium),
        Container(
          //padding: EdgeInsets.symmetric(horizontal: 10.w),
          height: 40.h,
          width: 0.53.sw,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(buttonRadius),
            border: Border.all(color: Colors.black, width: 0.5),
            color: Colors.white,
          ),
          child: DropdownButton2(
            underline : SizedBox.shrink(),
            isExpanded: true,
            value: activity,
            items: available_activityLevel.map((activity){
              return DropdownMenuItem(child: Text(activity), value: activity);
            }).toList(),
            onChanged: (value){
              setState((){
                activity = value;
                widget.selected_activity.text = activity ?? "";
              });
            }
          ),
        ),
      ],
    );
  }
}