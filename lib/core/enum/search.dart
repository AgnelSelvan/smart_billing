enum EmployeeSearchCategory {
  name,
  mobileNo,
  email,
  userCode,
  state,
  city,
  pincode,
  role;

  static EmployeeSearchCategory toEnum(String value) {
    switch (value) {
      case 'Name':
        return EmployeeSearchCategory.name;
      case 'Mobile No':
        return EmployeeSearchCategory.mobileNo;
      case 'Email':
        return EmployeeSearchCategory.email;
      case 'Employee Code':
        return EmployeeSearchCategory.userCode;
      case 'State':
        return EmployeeSearchCategory.state;
      case 'City':
        return EmployeeSearchCategory.city;
      case 'Pincode':
        return EmployeeSearchCategory.pincode;
      case 'Role':
        return EmployeeSearchCategory.role;

      default:
        return EmployeeSearchCategory.role;
    }
  }

  String get rawValue {
    switch (this) {
      case EmployeeSearchCategory.city:
        return 'City';
      case EmployeeSearchCategory.email:
        return 'Email';
      case EmployeeSearchCategory.userCode:
        return 'Employee Code';
      case EmployeeSearchCategory.mobileNo:
        return 'Mobile No';
      case EmployeeSearchCategory.name:
        return 'Name';
      case EmployeeSearchCategory.pincode:
        return 'Pincode';
      case EmployeeSearchCategory.role:
        return 'Role';
      case EmployeeSearchCategory.state:
        return 'State';
      default:
        return 'Unknown';
    }
  }

  @override
  String toString() {
    return rawValue;
  }
}

enum CompanySearchCategory {
  companyName,
  mobileNo,
  email,
  state,
  city,
  pincode,
  accountStatus,
  gstin;

  String get rawValue {
    switch (this) {
      case CompanySearchCategory.accountStatus:
        return 'Account Status';
      case CompanySearchCategory.gstin:
        return 'GSTIN';
      case CompanySearchCategory.city:
        return 'City';
      case CompanySearchCategory.email:
        return 'Email';
      case CompanySearchCategory.companyName:
        return 'Company Name';
      case CompanySearchCategory.mobileNo:
        return 'Mobile No';
      case CompanySearchCategory.pincode:
        return 'Pincode';
      case CompanySearchCategory.state:
        return 'State';
      default:
        return 'Unknown';
    }
  }

  @override
  String toString() {
    return rawValue;
  }
}
