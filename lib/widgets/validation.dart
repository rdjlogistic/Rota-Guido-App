

/// capitalCase is used for one capital character is requiter in string
var capitalCase = RegExp(r'[A-Z]');

/// smallCase is used for one small character is requiter in string
var smallCase = RegExp(r'[a-z]');

/// atLeastOneNumber is used for one number is requiter in string
var atLeastOneNumber = RegExp(r'[0-9]');

/// specialCharacters is used for one special characters is requiter in string
var specialCharacters = RegExp(r'[!@#$%^&*(),.?":{}|<>]');

/// isValidEmail is used for check email id is valid or not
var isValidEmail = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");


/// isValidPassword is used for check password
var isValidPassword = RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,10}$");
