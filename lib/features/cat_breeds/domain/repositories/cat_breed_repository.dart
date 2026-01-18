import 'package:fpdart/fpdart.dart';

import '../../../../features/cat_breeds/domain/entities/cat_breed.dart';
import '../../../../utils/error/failures.dart';

abstract class CatBreedRepository {
  Future<Either<Failure, List<CatBreed>>> getAllCatBreeds(int page);
  Future<Either<Failure, List<CatBreed>>> searchCatBreeds(String query);
}