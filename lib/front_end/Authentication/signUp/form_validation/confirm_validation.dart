String? confirmValidation(value, password){
  if(value!.isEmpty){
    return "Confirm your password";
  }
  else{
    if(value != password){
      return "Invalid password";
    }
  }
}