import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "/../../theme/app_theme.dart";

class Getgender extends StatefulWidget {
  Getgender({super.key, required this.selectedGender});
  TextEditingController selectedGender;

  @override
  State<Getgender> createState() => _GetgenderState();
}

class _GetgenderState extends State<Getgender> {

  String? gender;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("Gender : ", style: textTheme.displayMedium),
        SizedBox(
          width: 0.3.sw,
          child: RadioListTile(
            contentPadding: EdgeInsets.zero,
            value: "Male",
            title: Text("Male"),
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value;
                widget.selectedGender.text = gender?? "";
                print("gender: ${widget.selectedGender.text}");
                //widget.selectedGender = value;
              });
            },
          ),
        ),
        //Text("Male"),
        SizedBox(
          width: 0.38.sw,
          child: RadioListTile(
            contentPadding: EdgeInsets.zero,
            value: "Female",
            title: Text("Female"),
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value;
                widget.selectedGender.text = gender??"";
                print("gender: ${widget.selectedGender.text}");
                //widget.selectedGender = value;
              });
            },
          ),
        ),

      ],
    );
  }
}
