import 'package:smart_billing/core/extension/string.dart';

class AppValidators {
  static String? nameValidate(String? value) {
    value ??= "";
    if (value.isEmpty) {
      return nameIsRequired;
    } else if (containsNumeric(value)) {
      return nameCannotContainNumericValues;
    }
    return null;
  }

  static String? companyNameValidate(String? value) {
    value ??= "";
    if (value.isEmpty) {
      return companyNameIsRequired;
    }
    return null;
  }

  static String? mobileNoValidate(String? value) {
    value ??= "";
    if (value.isEmpty) {
      return mobileNoIsRequired;
    }
    try {
      int.parse(value);
      if (value.length != 10) {
        return mobileNoShouldBe10Digit;
      }
      return null;
    } catch (e) {
      return pleaseEnterValidMobileNo;
    }
  }

  static String? mobileNoNotMandatoryValidate(String? value) {
    value ??= "";
    if (value.isEmpty) {
      return null;
    }
    try {
      int.parse(value);
      if (value.isEmpty) {
        return mobileNoIsRequired;
      }
      if (value.length != 10) {
        return mobileNoShouldBe10Digit;
      }
      return null;
    } catch (e) {
      return pleaseEnterValidMobileNo;
    }
  }

  static String? emailValidate(String? value) {
    value ??= "";
    if (value.isEmpty) {
      return emailIsRequired;
    }
    if (!value.isValidEmail) {
      return invalidEmail;
    }

    return null;
  }

  static String? emailNotMandatoryValidate(String? value) {
    value ??= "";
    if (value.isEmpty) {
      return null;
    }
    if (!value.isValidEmail) {
      return invalidEmail;
    }

    return null;
  }

  static String? cityValidate(String? value) {
    value ??= "";
    if (value.isEmpty) {
      return cityIsRequired;
    }
    return null;
  }

  static String? pincodeValidate(String? value) {
    value ??= "";
    if (value.isEmpty) {
      return pincodeIsRequired;
    }
    try {
      int.parse(value);
      if (value.length != 6) {
        return pincodeShouldBe6Digit;
      }

      return null;
    } catch (e) {
      return pleaseEnterValidPincode;
    }
  }

  static String? stateValidate(String? value) {
    value ??= "";
    if (value.isEmpty) {
      return stateIsRequired;
    }
    return null;
  }

  static String? addressValidate(String? value) {
    value ??= "";
    if (value.isEmpty) {
      return addressIsRequired;
    }
    return null;
  }

  static String? fieldRequired(String? value) {
    value ??= "";
    if (value.isEmpty) {
      return thisFieldIsRequired;
    }
    return null;
  }

  static String emailIsRequired = "Email is required";
  static String invalidEmail = "Invalid email";
  static String thisFieldIsRequired = "This field is required";

  static String nameIsRequired = "Name is required";
  static String nameCannotContainNumericValues =
      "Name cannot contain numeric values";

  static String companyNameIsRequired = "Company Name is required";

  static String mobileNoIsRequired = "Mobile No is required";
  static String mobileNoShouldBe10Digit = "Mobile No should be 10 digit";
  static String pleaseEnterValidMobileNo = "Please enter valid mobile no";

  static String addressIsRequired = "Address is required";

  static String cityIsRequired = "City is required";

  static String stateIsRequired = "State is required";

  static String pincodeIsRequired = "Pincode is required";
  static String pincodeShouldBe6Digit = "Pincode should be 6 digit";
  static String pleaseEnterValidPincode = "Please enter valid pincode";

  static List<String> allValidatorString = [
    emailIsRequired,
    invalidEmail,
    thisFieldIsRequired,
    nameIsRequired,
    nameCannotContainNumericValues,
    companyNameIsRequired,
    mobileNoIsRequired,
    mobileNoShouldBe10Digit,
    pleaseEnterValidMobileNo,
    addressIsRequired,
    cityIsRequired,
    stateIsRequired,
    pincodeIsRequired,
    pleaseEnterValidPincode,
  ];

  static bool containsNumeric(String str) {
    final RegExp numeric = RegExp('[0-9]');
    return str.contains(numeric);
  }
}
