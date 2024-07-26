// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:hive_flutter/hive_flutter.dart' as _i986;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/company/data/datasource/company_local_datasource.dart'
    as _i72;
import '../../features/company/data/datasource/company_remote_datasource.dart'
    as _i204;
import '../../features/company/data/models/company_model.dart' as _i581;
import '../../features/company/data/repository/company_repository.dart'
    as _i553;
import '../../features/company/domain/repository/company_repository.dart'
    as _i821;
import '../../features/company/domain/usecase/add_company_usecase.dart'
    as _i576;
import '../../features/company/domain/usecase/delete_company_usecase.dart'
    as _i162;
import '../../features/company/domain/usecase/get_a_company_usecase.dart'
    as _i845;
import '../../features/company/domain/usecase/get_all_company_usecase.dart'
    as _i1008;
import '../../features/company/domain/usecase/get_my_own_company.dart'
    as _i1011;
import '../../features/splash/presentation/manager/splash_bloc.dart' as _i108;
import 'module/hive_module.dart' as _i458;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final hiveBoxModule = _$HiveBoxModule();
    await gh.lazySingletonAsync<_i986.Box<_i581.CompanyModel>>(
      () => hiveBoxModule.openCompanyBox(),
      preResolve: true,
    );
    gh.lazySingleton<_i204.CompanyRemoteDataSource>(
        () => _i204.CompanyRemoteDataSourceImpl());
    await gh.lazySingletonAsync<_i986.Box<dynamic>>(
      () => hiveBoxModule.openBox(gh<String>(instanceName: 'boxName')),
      preResolve: true,
    );
    gh.lazySingleton<_i72.CompanyLocalDataSource>(() =>
        _i72.CompanyLocalDataSourceImpl(
            companyBox: gh<_i986.Box<_i581.CompanyModel>>()));
    gh.lazySingleton<_i821.CompanyRepository>(() => _i553.CompanyRepositoryImpl(
          localDataSource: gh<_i72.CompanyLocalDataSource>(),
          remoteDataSource: gh<_i204.CompanyRemoteDataSource>(),
        ));
    gh.lazySingleton<_i576.AddCompanyUseCase>(() =>
        _i576.AddCompanyUseCase(repository: gh<_i821.CompanyRepository>()));
    gh.lazySingleton<_i1011.GetMyOwnCompanyUsecase>(() =>
        _i1011.GetMyOwnCompanyUsecase(
            repository: gh<_i821.CompanyRepository>()));
    gh.lazySingleton<_i162.DeleteCompanyUseCase>(() =>
        _i162.DeleteCompanyUseCase(repository: gh<_i821.CompanyRepository>()));
    gh.lazySingleton<_i1008.GetAllCompanyUseCase>(() =>
        _i1008.GetAllCompanyUseCase(repository: gh<_i821.CompanyRepository>()));
    gh.lazySingleton<_i845.GetACompanyUseCase>(() =>
        _i845.GetACompanyUseCase(repository: gh<_i821.CompanyRepository>()));
    gh.factory<_i108.SplashBloc>(
        () => _i108.SplashBloc(gh<_i1011.GetMyOwnCompanyUsecase>()));
    return this;
  }
}

class _$HiveBoxModule extends _i458.HiveBoxModule {}
