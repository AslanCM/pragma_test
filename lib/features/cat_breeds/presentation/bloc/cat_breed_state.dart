part of 'cat_breed_bloc.dart';

@freezed
abstract class CatBreedState with _$CatBreedState {
  const factory CatBreedState.initial() = _Initial;
  const factory CatBreedState.loading() = _Loading;
  const factory CatBreedState.loaded({
    required List<CatBreed> catBreeds,
    @Default(0) int page,
    @Default(false) bool hasReachedMax,
    @Default('') String currentQuery,
    @Default(false) bool isLoadingMore,
  }) = _Loaded;
  const factory CatBreedState.error(String message) = _Error;
}
