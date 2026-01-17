// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_breed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CatBreedModel _$CatBreedModelFromJson(Map<String, dynamic> json) =>
    _CatBreedModel(
      id: json['id'] as String,
      name: json['name'] as String,
      origin: json['origin'] as String,
      temperament: json['temperament'] as String,
      intelligence: (json['intelligence'] as num).toInt(),
      description: json['description'] as String,
      adaptability: (json['adaptability'] as num).toInt(),
      lifeSpan: json['life_span'] as String,
      affectionLevel: (json['affection_level'] as num).toInt(),
      image: json['image'] == null
          ? null
          : CatImage.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CatBreedModelToJson(_CatBreedModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'origin': instance.origin,
      'temperament': instance.temperament,
      'intelligence': instance.intelligence,
      'description': instance.description,
      'adaptability': instance.adaptability,
      'life_span': instance.lifeSpan,
      'affection_level': instance.affectionLevel,
      'image': instance.image,
    };

_CatImage _$CatImageFromJson(Map<String, dynamic> json) =>
    _CatImage(url: json['url'] as String);

Map<String, dynamic> _$CatImageToJson(_CatImage instance) => <String, dynamic>{
  'url': instance.url,
};
