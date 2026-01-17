
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../features/cat_breeds/domain/entities/cat_breed.dart';

part 'cat_breed_model.freezed.dart';
part 'cat_breed_model.g.dart';

@freezed
abstract class CatBreedModel with _$CatBreedModel {
  const CatBreedModel._();

  const factory CatBreedModel({
    required String id,
    required String name,
    required String origin,
    required String temperament,
    required int intelligence,
    required String description,
    required int adaptability,
    @JsonKey(name: 'life_span') required String lifeSpan,
    @JsonKey(name: 'affection_level') required int affectionLevel,
    CatImage? image,
  }) = _CatBreedModel;

  factory CatBreedModel.fromJson(Map<String, dynamic> json) =>
      _$CatBreedModelFromJson(json);

  CatBreed toEntity() {
    return CatBreed(
      id: id,
      name: name,
      origin: origin,
      temperament: temperament,
      description: description,
      adaptability: adaptability,
      intelligence: intelligence,
      affectionLevel: affectionLevel,
      lifeSpan: lifeSpan,
      imageUrl: image?.url,
    );
  }
}

@freezed
abstract class CatImage with _$CatImage {
  const factory CatImage({
    required String url,
  }) = _CatImage;

  factory CatImage.fromJson(Map<String, dynamic> json) => _$CatImageFromJson(json);
}