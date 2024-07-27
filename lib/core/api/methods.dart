enum APIMethods {
  get,
  post,
  put,
  delete,
  patch;

  String get rawValues {
    switch (this) {
      case APIMethods.get:
        return "get";
      case APIMethods.post:
        return "post";
      case APIMethods.put:
        return "put";
      case APIMethods.delete:
        return "delete";
      case APIMethods.patch:
        return "patch";
      default:
        return "get";
    }
  }

  static APIMethods toEnum(String value) {
    switch (value) {
      case "delete":
        return APIMethods.delete;
      case "get":
        return APIMethods.get;
      case "post":
        return APIMethods.post;
      case "put":
        return APIMethods.put;
      case "patch":
        return APIMethods.patch;
      default:
        return APIMethods.get;
    }
  }
}
