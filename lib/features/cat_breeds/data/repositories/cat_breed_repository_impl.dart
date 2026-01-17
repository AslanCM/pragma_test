import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import 'package:pragma_catbreeds/features/cat_breeds/data/datasources/cat_breed_datasource.dart';
import 'package:pragma_catbreeds/features/cat_breeds/domain/entities/cat_breed.dart';
import 'package:pragma_catbreeds/features/cat_breeds/domain/repositories/cat_breed_repository.dart';
import 'package:pragma_catbreeds/utils/error/failures.dart';

@LazySingleton(as: CatBreedRepository)
class CatBreedRepositoryImpl implements CatBreedRepository {
  final CatBreedDataSource _dataSource;

  CatBreedRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, List<CatBreed>>> getAllCatBreeds() async {
    try {
      final catBreeds = await _dataSource.getAllCatBreeds();
      final catBreedsEntities =
          catBreeds.map((catBreed) => catBreed.toEntity()).toList();
  
      return Right(catBreedsEntities);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}