import "package:flutter/material.dart";
import "package:flutter_fitness_app/front_end/splashScreen/Widgets/startButton.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:flutter_fitness_app/theme/app_theme.dart";

class SplashscreenView extends StatefulWidget {
  const SplashscreenView({super.key});

  @override
  State<SplashscreenView> createState() => _SplashscreenViewState();
}

class _SplashscreenViewState extends State<SplashscreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 1.sh,
        width: 1.sw,
        child: Stack(
          children: [

            Positioned(
              top: 0.45.sh,
              left: 20.w,
              right: 20.w,
              child: Text(
                "Today's actions are tomorrow's result",
                style: TextStyle(fontSize: 30.sp),
                textAlign: TextAlign.center,
              ),
            ),

            Positioned(
              top: 0.8.sh,
              left: 20.w,
              right: 20.w,
              child: GetStarted(),
            ),
          ],
        ),
      ),
    );
  }
}
