String? emailValidation(value){
  if(value!.isEmpty){
    return "Please enter email";
  }
  else{
    RegExp regExp = RegExp(r'^[a-zA-Z0-9.\-+_%]+[@]gmail\.com');

    if(!regExp.hasMatch(value)){
      return "Invalid email format";
    }
  }
}