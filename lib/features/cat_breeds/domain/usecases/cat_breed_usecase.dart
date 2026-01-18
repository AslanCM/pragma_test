import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:pragma_catbreeds/features/cat_breeds/domain/entities/cat_breed.dart';
import 'package:pragma_catbreeds/features/cat_breeds/domain/repositories/cat_breed_repository.dart';
import 'package:pragma_catbreeds/utils/error/failures.dart';


@lazySingleton
class CatBreedUsecase {
  final CatBreedRepository repository;

  CatBreedUsecase(this.repository);

  Future<Either<Failure, List<CatBreed>>> call(int page) {
    return repository.getAllCatBreeds(page);
  }

  Future<Either<Failure, List<CatBreed>>> search(String query) {
    return repository.searchCatBreeds(query);
  }
}