import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/di/module/hive_module.dart';

import 'di.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  preferRelativeImports: false,
  asExtension: false,
  throwOnMissingDependencies: true,
)
Future<void> configureDependencies({
  String? env,
  EnvironmentFilter? environmentFilter,
}) async {
  await HiveAdapters().initHive();
  await init(
    getIt,
    environmentFilter: environmentFilter,
    environment: env,
  );
}
