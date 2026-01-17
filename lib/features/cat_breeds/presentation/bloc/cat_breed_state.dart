part of 'cat_breed_bloc.dart';

@freezed
abstract class CatBreedState with _$CatBreedState {
  const factory CatBreedState.initial() = _Initial;
  const factory CatBreedState.loading() = _Loading;
  const factory CatBreedState.loaded(List<CatBreed> catBreeds) = _Loaded;
  const factory CatBreedState.error(String message) = _Error;
}