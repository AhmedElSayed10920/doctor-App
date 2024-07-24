inputValidate(String val, int min, int max, String type) {
  if (val.isEmpty) {
    return "This field is required";
  }

  if (type == 'email') {
    String emailPattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(emailPattern);
    if (!regExp.hasMatch(val)) {
      return "Enter valid Email";
    }
  }

  if (type == 'password') {
    String passPattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = RegExp(passPattern);
    if (!regExp.hasMatch(val)) {
      return "Please choose a stronger password. Try a mix of letters, numbers, and symbols.";
    }
  }
  if (type == 'phone') {
    String phonePattern =
        r'^(010|011|012|015)[0-9]{8}$'; //this pattern for egypt phone numbers only
    RegExp regExp = RegExp(phonePattern);
    if (!regExp.hasMatch(val)) {
      return "Enter valid Phone Number";
    }
  }

  if (val.length < min) {
    return "can't be less than $min";
  }
  if (val.length > max) {
    return "can't be greater than $max";
  }
}
