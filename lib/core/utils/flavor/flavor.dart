import 'package:injectable/injectable.dart';

@injectable
class AppFlavor {
  final String appName;
  final String flavor;
  final bool isDebug;

  double version() {
    return 1;
  }

  AppFlavor({
    required this.appName,
    required this.isDebug,
    required this.flavor,
  });
}
