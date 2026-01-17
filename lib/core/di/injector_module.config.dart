// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/cat_breeds/data/datasources/cat_breed_datasource.dart'
    as _i760;
import '../../features/cat_breeds/data/repositories/cat_breed_repository_impl.dart'
    as _i912;
import '../../features/cat_breeds/domain/repositories/cat_breed_repository.dart'
    as _i45;
import '../../features/cat_breeds/domain/usecases/cat_breed_usecase.dart'
    as _i335;
import '../../features/cat_breeds/presentation/bloc/cat_breed_bloc.dart'
    as _i102;
import '../dio/dio_config.dart' as _i913;
import '../logger/log_service.dart' as _i160;
import '../logger/logger.dart' as _i512;
import 'network_module.dart' as _i567;

const String _dev = 'dev';
const String _prod = 'prod';

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final networkModule = _$NetworkModule();
  gh.lazySingleton<_i160.LogService>(() => _i512.LoggerImpl());
  gh.singleton<_i913.DioConfig>(
    () => _i913.DevDioConfigImpl(),
    registerFor: {_dev},
  );
  gh.singleton<_i913.DioConfig>(
    () => _i913.ProdDioConfigImpl(),
    registerFor: {_prod},
  );
  gh.lazySingleton<_i361.Dio>(
    () => networkModule.catDio(gh<_i913.DioConfig>()),
    instanceName: 'CatApi',
  );
  gh.lazySingleton<_i760.CatBreedDataSource>(
    () => _i760.CatBreedDataSourceImpl(gh<_i361.Dio>(instanceName: 'CatApi')),
  );
  gh.lazySingleton<_i45.CatBreedRepository>(
    () => _i912.CatBreedRepositoryImpl(gh<_i760.CatBreedDataSource>()),
  );
  gh.lazySingleton<_i335.CatBreedUsecase>(
    () => _i335.CatBreedUsecase(gh<_i45.CatBreedRepository>()),
  );
  gh.factory<_i102.CatBreedBloc>(
    () => _i102.CatBreedBloc(gh<_i335.CatBreedUsecase>()),
  );
  return getIt;
}

class _$NetworkModule extends _i567.NetworkModule {}
