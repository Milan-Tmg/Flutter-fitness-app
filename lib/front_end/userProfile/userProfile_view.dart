import "package:flutter/material.dart";
import "package:flutter_fitness_app/front_end/userProfile/common_widget/user_info.dart";
import "package:flutter_fitness_app/front_end/userProfile/widget/EditButton.dart";
import "package:flutter_fitness_app/front_end/userProfile/widget/navigateBackPage.dart";
import "package:flutter_fitness_app/front_end/userProfile/widget/profilePic.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "/theme/app_theme.dart";

class UserprofileView extends StatelessWidget {
  const UserprofileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 0.04.sh),
            Navigatebackpage(),
            Profilepic(),
            UserInfo(info_name: "Age", info_value: "22"),
            UserInfo(info_name: "Weight", info_value: "60Kg"),
            UserInfo(info_name: "Height", info_value: "170cm"),
            UserInfo(info_name: "Gender", info_value: "Male"),

            SizedBox(height: 0.05.sh),
            Editbutton(),
          ],
        ),
      ),
    );
  }
}
