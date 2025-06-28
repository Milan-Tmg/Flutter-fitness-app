import "package:flutter/material.dart";
import "package:flutter_fitness_app/front_end/splashScreen/Widgets/startButton.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class SplashscreenView extends StatefulWidget {
  const SplashscreenView({super.key});

  @override
  State<SplashscreenView> createState() => _SplashscreenViewState();
}

class _SplashscreenViewState extends State<SplashscreenView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.transparent,
          child: Column(
            //mainAxisSize = MainAxisSize.max,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Today's actions are tomorrow's result"),
              SizedBox(height: 40.h),
              getStarted(),
              Text("hello"),
            ],
          ),
        ),
      ),
    );
  }
}
