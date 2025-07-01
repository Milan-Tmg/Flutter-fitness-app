String? passwordValidation(value){
  //print("Authenticate function has executed");
  if(value == null || value!.isEmpty){
    return "Please enter password";
  }
  else{
    if(value!.length < 6){
      return "Password length should be at least 6";
    }
  }
}