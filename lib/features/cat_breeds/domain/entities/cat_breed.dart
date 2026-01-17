import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_breed.freezed.dart';

@freezed
abstract class CatBreed with _$CatBreed {
  const factory CatBreed({
    required String id,
    required String name,
    required String temperament,
    required String origin,
    required String description,
    required int adaptability,
    required int intelligence,
    required int affectionLevel,
    required String lifeSpan,
    String? imageUrl,
  }) = _CatBreed;
}

