part of 'cat_breed_bloc.dart';

@freezed
abstract class CatBreedEvent with _$CatBreedEvent {
  const factory CatBreedEvent.started() = _Started;

}