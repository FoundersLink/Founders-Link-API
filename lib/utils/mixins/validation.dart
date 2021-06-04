bool isError = false;
validateFirstName(value) {
  if (value == null || value.isEmpty) {
    return 'Please provide your first name';
  }
  return null;
}

validateLastName(value) {
  if (value == null || value.isEmpty) {
    return 'Please provide your last name';
  }
  return null;
}
validateLocation(value) {
  if (value == null || value.isEmpty) {
    return 'Please provide your last name';
  }
  return null;
}

validateEmail(value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value) || value.isEmpty) {
    return 'Please enter valid email addres';
  }
  return null;
}

var pass;
validatePassword(value) {
  pass = value;
  // Pattern pattern =
  //     r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
  // RegExp regex = new RegExp(pattern);
  // if (value.isEmpty) {
  //   return 'Please enter your password';
  // } else if (!regex.hasMatch(value) || value.isEmpty) {
  //   return 'Please enter strong password with alteast one upper letter, number and special character';
  // } else if (value.length < 6) {
  //   return "Password must be atleast 6 characters long or more";
  // }
}

validateConfirmPassword(value) {
  if (value.isEmpty) {
    return 'Please enter your password';
  } else if (value != pass) {
    return "password not match !";
  }
}
