// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:hive_flutter/adapters.dart' as _i744;
import 'package:hive_flutter/hive_flutter.dart' as _i986;
import 'package:injectable/injectable.dart' as _i526;
import 'package:smart_billing/core/api/api.dart' as _i672;
import 'package:smart_billing/core/di/module/hive_module.dart' as _i175;
import 'package:smart_billing/core/utils/environments/environments.dart'
    as _i11;
import 'package:smart_billing/core/utils/flavor/flavor.dart' as _i817;
import 'package:smart_billing/features/company/data/datasource/company_local_datasource.dart'
    as _i578;
import 'package:smart_billing/features/company/data/datasource/company_remote_datasource.dart'
    as _i445;
import 'package:smart_billing/features/company/data/models/company_model.dart'
    as _i353;
import 'package:smart_billing/features/company/data/repository/company_repository.dart'
    as _i274;
import 'package:smart_billing/features/company/domain/repository/company_repository.dart'
    as _i164;
import 'package:smart_billing/features/company/domain/usecase/add_company_usecase.dart'
    as _i171;
import 'package:smart_billing/features/company/domain/usecase/delete_company_usecase.dart'
    as _i0;
import 'package:smart_billing/features/company/domain/usecase/get_a_company_usecase.dart'
    as _i937;
import 'package:smart_billing/features/company/domain/usecase/get_all_company_usecase.dart'
    as _i427;
import 'package:smart_billing/features/company/domain/usecase/get_my_own_company.dart'
    as _i167;
import 'package:smart_billing/features/pincode/data/datasources/remote_data_source.dart'
    as _i957;
import 'package:smart_billing/features/pincode/data/repositories/pincode_impl.dart'
    as _i188;
import 'package:smart_billing/features/pincode/domain/repositories/pincode_repository.dart'
    as _i861;
import 'package:smart_billing/features/pincode/domain/usecases/pincode.dart'
    as _i696;
import 'package:smart_billing/features/register/presentation/manager/register_bloc.dart'
    as _i153;
import 'package:smart_billing/features/splash/presentation/manager/splash_bloc.dart'
    as _i765;
import 'package:smart_billing/features/user/data/datasource/user_local_datasource.dart'
    as _i286;
import 'package:smart_billing/features/user/data/models/user_model.dart'
    as _i557;
import 'package:smart_billing/features/user/data/repository/user_repository.dart'
    as _i677;
import 'package:smart_billing/features/user/domain/repository/user_repository.dart'
    as _i431;
import 'package:smart_billing/features/user/domain/usecase/add_user_usecase.dart'
    as _i449;
import 'package:smart_billing/features/user/domain/usecase/delete_user_usecase.dart'
    as _i53;
import 'package:smart_billing/features/user/domain/usecase/get_a_user_usecase.dart'
    as _i400;
import 'package:smart_billing/features/user/domain/usecase/get_all_user_usecase.dart'
    as _i20;
import 'package:smart_billing/features/user/domain/usecase/update_user_usecase.dart'
    as _i280;
import 'package:smart_billing/features/user/presentation/manager/user_bloc.dart'
    as _i125;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final hiveBoxModule = _$HiveBoxModule();
  gh.factory<_i11.AppEnvironments>(() => _i11.AppEnvironments());
  gh.factory<_i672.APIHandler>(() => _i672.APIHandler());
  await gh.lazySingletonAsync<_i744.Box<_i353.CompanyModel>>(
    () => hiveBoxModule.openCompanyBox(),
    preResolve: true,
  );
  await gh.lazySingletonAsync<_i744.Box<_i557.UserModel>>(
    () => hiveBoxModule.openEmployeeBox(),
    preResolve: true,
  );
  gh.lazySingleton<_i445.CompanyRemoteDataSource>(
      () => _i445.CompanyRemoteDataSourceImpl());
  gh.lazySingleton<_i957.PincodeRDS>(
      () => _i957.PincodeRDSImpl(gh<_i672.APIHandler>()));
  gh.lazySingleton<_i861.PincodeRepository>(
      () => _i188.PincodeRepositoryImpl(gh<_i957.PincodeRDS>()));
  gh.lazySingleton<_i578.CompanyLocalDataSource>(() =>
      _i578.CompanyLocalDataSourceImpl(
          companyBox: gh<_i986.Box<_i353.CompanyModel>>()));
  gh.lazySingleton<_i696.GetPincodeDetailsUseCase>(
      () => _i696.GetPincodeDetailsUseCase(gh<_i861.PincodeRepository>()));
  gh.lazySingleton<_i164.CompanyRepository>(() => _i274.CompanyRepositoryImpl(
        localDataSource: gh<_i578.CompanyLocalDataSource>(),
        remoteDataSource: gh<_i445.CompanyRemoteDataSource>(),
      ));
  gh.lazySingleton<_i286.UserLocalDataSource>(() =>
      _i286.UserLocalDataSourceImpl(userBox: gh<_i986.Box<_i557.UserModel>>()));
  gh.factory<_i817.AppFlavor>(() => _i817.AppFlavor(
        appName: gh<String>(),
        isDebug: gh<bool>(),
        flavor: gh<String>(),
      ));
  gh.lazySingleton<_i431.UserRepository>(() => _i677.UserRepositoryImpl(
      localDataSource: gh<_i286.UserLocalDataSource>()));
  gh.lazySingleton<_i171.AddCompanyUseCase>(
      () => _i171.AddCompanyUseCase(repository: gh<_i164.CompanyRepository>()));
  gh.lazySingleton<_i167.GetMyOwnCompanyUsecase>(() =>
      _i167.GetMyOwnCompanyUsecase(repository: gh<_i164.CompanyRepository>()));
  gh.lazySingleton<_i0.DeleteCompanyUseCase>(() =>
      _i0.DeleteCompanyUseCase(repository: gh<_i164.CompanyRepository>()));
  gh.lazySingleton<_i427.GetAllCompanyUseCase>(() =>
      _i427.GetAllCompanyUseCase(repository: gh<_i164.CompanyRepository>()));
  gh.lazySingleton<_i937.GetACompanyUseCase>(() =>
      _i937.GetACompanyUseCase(repository: gh<_i164.CompanyRepository>()));
  gh.lazySingleton<_i20.GetAllUserUseCase>(
      () => _i20.GetAllUserUseCase(repository: gh<_i431.UserRepository>()));
  gh.lazySingleton<_i400.GetAUserUseCase>(
      () => _i400.GetAUserUseCase(repository: gh<_i431.UserRepository>()));
  gh.lazySingleton<_i53.DeleteUserUseCase>(
      () => _i53.DeleteUserUseCase(repository: gh<_i431.UserRepository>()));
  gh.lazySingleton<_i449.AddUserUseCase>(
      () => _i449.AddUserUseCase(repository: gh<_i431.UserRepository>()));
  gh.lazySingleton<_i280.UpdateUserUseCase>(
      () => _i280.UpdateUserUseCase(repository: gh<_i431.UserRepository>()));
  gh.factory<_i765.SplashBloc>(
      () => _i765.SplashBloc(gh<_i167.GetMyOwnCompanyUsecase>()));
  gh.factory<_i125.UserBloc>(() => _i125.UserBloc(
        gh<_i449.AddUserUseCase>(),
        gh<_i280.UpdateUserUseCase>(),
        gh<_i53.DeleteUserUseCase>(),
        gh<_i20.GetAllUserUseCase>(),
        gh<_i400.GetAUserUseCase>(),
      ));
  gh.factory<_i153.RegisterBloc>(() => _i153.RegisterBloc(
        gh<_i449.AddUserUseCase>(),
        gh<_i171.AddCompanyUseCase>(),
        gh<_i53.DeleteUserUseCase>(),
      ));
  return getIt;
}

class _$HiveBoxModule extends _i175.HiveBoxModule {}
