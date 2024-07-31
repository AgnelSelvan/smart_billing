enum SortBy {
  createdAt,
  name;

  String get rawValue {
    switch (this) {
      case SortBy.createdAt:
        return 'Created At';
      case SortBy.name:
        return 'Name';
    }
  }

  static SortBy toEnum(String rawValue) {
    switch (rawValue) {
      case 'Created At':
        return SortBy.createdAt;
      case 'Name':
        return SortBy.name;
      default:
        throw Exception('Invalid rawValue: $rawValue');
    }
  }

  @override
  String toString() => rawValue;
}

enum EmployeeSortBy {
  userCode,
  createdAt,
  name,
  state,
  city;

  String get rawValue {
    switch (this) {
      case EmployeeSortBy.createdAt:
        return 'Created At';
      case EmployeeSortBy.name:
        return 'Name';
      case EmployeeSortBy.userCode:
        return 'Employee Code';
      case EmployeeSortBy.state:
        return 'State';
      case EmployeeSortBy.city:
        return 'City';
    }
  }

  static EmployeeSortBy toEnum(String rawValue) {
    switch (rawValue) {
      case 'Created At':
        return EmployeeSortBy.createdAt;
      case 'Name':
        return EmployeeSortBy.name;
      case 'Employee Code':
        return EmployeeSortBy.userCode;
      case 'State':
        return EmployeeSortBy.state;
      case 'City':
        return EmployeeSortBy.city;
      default:
        throw Exception('Invalid rawValue: $rawValue');
    }
  }

  @override
  String toString() => rawValue;
}
