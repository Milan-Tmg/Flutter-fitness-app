import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

// user's detail is handled here like age, height, etc

final details = ChangeNotifierProvider((ref) => User_detail_sm());

class User_detail_sm with ChangeNotifier{
  TextEditingController selectGender = TextEditingController();
  TextEditingController age= TextEditingController() ;
  TextEditingController weight = TextEditingController();
  TextEditingController height = TextEditingController();
  TextEditingController selected_activity = TextEditingController();
}