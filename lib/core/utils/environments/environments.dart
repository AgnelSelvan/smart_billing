import 'package:encrypt/encrypt.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/utils/flavor/flavor.dart';

@injectable
class AppEnvironments {
  static const String _appNameKey = 'appName';
  static const String _flavorKey = 'flavor';
  static const String _encryptKey32Char = 'encryptKey32Char';
  static const String _encryptIV16Char = 'encryptIV16Char';
  static const String _debugKey = 'debug';

  final String _appName = const String.fromEnvironment(_appNameKey);
  final String _flavor = const String.fromEnvironment(_flavorKey);

  final encryptKey =
      Key.fromBase64(const String.fromEnvironment(_encryptKey32Char));
  final encryptIV =
      IV.fromBase64(const String.fromEnvironment(_encryptIV16Char));

  final bool _debug = const bool.fromEnvironment(_debugKey);

  Environments get environment =>
      _debug ? Environments.dev : Environments.production;

  AppFlavor get appFlavor => AppFlavor(
        appName: _appName,
        isDebug: _debug,
        flavor: _flavor,
      );
}

enum Environments {
  dev,
  production;

  String get rawValue {
    switch (this) {
      case dev:
        return 'dev';
      case production:
        return 'production';
    }
  }
}
