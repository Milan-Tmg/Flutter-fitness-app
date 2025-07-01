import "package:flutter/material.dart";

String? emailValidation(String? value){
  if(value == null || value!.isEmpty){
    return "Please enter email";
  }
  else{
    RegExp regExp = RegExp(r'^[a-zA-Z0-9.\-+_%]+[@]gmail\.com');

    if(!regExp.hasMatch(value)){
      return "Invalid email format";
    }
  }
}