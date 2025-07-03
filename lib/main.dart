import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/firebase_options.dart';
import 'package:flutter_fitness_app/front_end/splashScreen/splashScreen_view.dart';
import "package:flutter_screenutil/flutter_screenutil.dart";
import "/theme/app_theme.dart";
import "package:flutter/services.dart";

Future<void> main() async {
  
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: backgroundColor,
    ),
  );
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  bool isAuthenticated = false;

  runApp(
      ScreenUtilInit(
        designSize: Size(375,812),
          builder: (context,child){
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                scaffoldBackgroundColor: backgroundColor,
              ),
              home: FitnessApp(),
            );
          }
      ),
  );
}

class FitnessApp extends StatefulWidget {
  const FitnessApp({super.key});

  @override
  State<FitnessApp> createState() => _FitnessAppState();
}

class _FitnessAppState extends State<FitnessApp> {
  @override
  Widget build(BuildContext context) {
    return SplashscreenView();
  }
}
