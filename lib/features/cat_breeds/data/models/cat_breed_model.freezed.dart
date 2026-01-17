// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_breed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatBreedModel {

 String get id; String get name; String get origin; String get temperament; int get intelligence; String get description; int get adaptability;@JsonKey(name: 'life_span') String get lifeSpan;@JsonKey(name: 'affection_level') int get affectionLevel; CatImage? get image;
/// Create a copy of CatBreedModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatBreedModelCopyWith<CatBreedModel> get copyWith => _$CatBreedModelCopyWithImpl<CatBreedModel>(this as CatBreedModel, _$identity);

  /// Serializes this CatBreedModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatBreedModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.temperament, temperament) || other.temperament == temperament)&&(identical(other.intelligence, intelligence) || other.intelligence == intelligence)&&(identical(other.description, description) || other.description == description)&&(identical(other.adaptability, adaptability) || other.adaptability == adaptability)&&(identical(other.lifeSpan, lifeSpan) || other.lifeSpan == lifeSpan)&&(identical(other.affectionLevel, affectionLevel) || other.affectionLevel == affectionLevel)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,origin,temperament,intelligence,description,adaptability,lifeSpan,affectionLevel,image);

@override
String toString() {
  return 'CatBreedModel(id: $id, name: $name, origin: $origin, temperament: $temperament, intelligence: $intelligence, description: $description, adaptability: $adaptability, lifeSpan: $lifeSpan, affectionLevel: $affectionLevel, image: $image)';
}


}

/// @nodoc
abstract mixin class $CatBreedModelCopyWith<$Res>  {
  factory $CatBreedModelCopyWith(CatBreedModel value, $Res Function(CatBreedModel) _then) = _$CatBreedModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String origin, String temperament, int intelligence, String description, int adaptability,@JsonKey(name: 'life_span') String lifeSpan,@JsonKey(name: 'affection_level') int affectionLevel, CatImage? image
});


$CatImageCopyWith<$Res>? get image;

}
/// @nodoc
class _$CatBreedModelCopyWithImpl<$Res>
    implements $CatBreedModelCopyWith<$Res> {
  _$CatBreedModelCopyWithImpl(this._self, this._then);

  final CatBreedModel _self;
  final $Res Function(CatBreedModel) _then;

/// Create a copy of CatBreedModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? origin = null,Object? temperament = null,Object? intelligence = null,Object? description = null,Object? adaptability = null,Object? lifeSpan = null,Object? affectionLevel = null,Object? image = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,temperament: null == temperament ? _self.temperament : temperament // ignore: cast_nullable_to_non_nullable
as String,intelligence: null == intelligence ? _self.intelligence : intelligence // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,adaptability: null == adaptability ? _self.adaptability : adaptability // ignore: cast_nullable_to_non_nullable
as int,lifeSpan: null == lifeSpan ? _self.lifeSpan : lifeSpan // ignore: cast_nullable_to_non_nullable
as String,affectionLevel: null == affectionLevel ? _self.affectionLevel : affectionLevel // ignore: cast_nullable_to_non_nullable
as int,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as CatImage?,
  ));
}
/// Create a copy of CatBreedModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CatImageCopyWith<$Res>? get image {
    if (_self.image == null) {
    return null;
  }

  return $CatImageCopyWith<$Res>(_self.image!, (value) {
    return _then(_self.copyWith(image: value));
  });
}
}


/// Adds pattern-matching-related methods to [CatBreedModel].
extension CatBreedModelPatterns on CatBreedModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatBreedModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatBreedModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatBreedModel value)  $default,){
final _that = this;
switch (_that) {
case _CatBreedModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatBreedModel value)?  $default,){
final _that = this;
switch (_that) {
case _CatBreedModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String origin,  String temperament,  int intelligence,  String description,  int adaptability, @JsonKey(name: 'life_span')  String lifeSpan, @JsonKey(name: 'affection_level')  int affectionLevel,  CatImage? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatBreedModel() when $default != null:
return $default(_that.id,_that.name,_that.origin,_that.temperament,_that.intelligence,_that.description,_that.adaptability,_that.lifeSpan,_that.affectionLevel,_that.image);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String origin,  String temperament,  int intelligence,  String description,  int adaptability, @JsonKey(name: 'life_span')  String lifeSpan, @JsonKey(name: 'affection_level')  int affectionLevel,  CatImage? image)  $default,) {final _that = this;
switch (_that) {
case _CatBreedModel():
return $default(_that.id,_that.name,_that.origin,_that.temperament,_that.intelligence,_that.description,_that.adaptability,_that.lifeSpan,_that.affectionLevel,_that.image);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String origin,  String temperament,  int intelligence,  String description,  int adaptability, @JsonKey(name: 'life_span')  String lifeSpan, @JsonKey(name: 'affection_level')  int affectionLevel,  CatImage? image)?  $default,) {final _that = this;
switch (_that) {
case _CatBreedModel() when $default != null:
return $default(_that.id,_that.name,_that.origin,_that.temperament,_that.intelligence,_that.description,_that.adaptability,_that.lifeSpan,_that.affectionLevel,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CatBreedModel extends CatBreedModel {
  const _CatBreedModel({required this.id, required this.name, required this.origin, required this.temperament, required this.intelligence, required this.description, required this.adaptability, @JsonKey(name: 'life_span') required this.lifeSpan, @JsonKey(name: 'affection_level') required this.affectionLevel, this.image}): super._();
  factory _CatBreedModel.fromJson(Map<String, dynamic> json) => _$CatBreedModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String origin;
@override final  String temperament;
@override final  int intelligence;
@override final  String description;
@override final  int adaptability;
@override@JsonKey(name: 'life_span') final  String lifeSpan;
@override@JsonKey(name: 'affection_level') final  int affectionLevel;
@override final  CatImage? image;

/// Create a copy of CatBreedModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatBreedModelCopyWith<_CatBreedModel> get copyWith => __$CatBreedModelCopyWithImpl<_CatBreedModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatBreedModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatBreedModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.temperament, temperament) || other.temperament == temperament)&&(identical(other.intelligence, intelligence) || other.intelligence == intelligence)&&(identical(other.description, description) || other.description == description)&&(identical(other.adaptability, adaptability) || other.adaptability == adaptability)&&(identical(other.lifeSpan, lifeSpan) || other.lifeSpan == lifeSpan)&&(identical(other.affectionLevel, affectionLevel) || other.affectionLevel == affectionLevel)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,origin,temperament,intelligence,description,adaptability,lifeSpan,affectionLevel,image);

@override
String toString() {
  return 'CatBreedModel(id: $id, name: $name, origin: $origin, temperament: $temperament, intelligence: $intelligence, description: $description, adaptability: $adaptability, lifeSpan: $lifeSpan, affectionLevel: $affectionLevel, image: $image)';
}


}

/// @nodoc
abstract mixin class _$CatBreedModelCopyWith<$Res> implements $CatBreedModelCopyWith<$Res> {
  factory _$CatBreedModelCopyWith(_CatBreedModel value, $Res Function(_CatBreedModel) _then) = __$CatBreedModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String origin, String temperament, int intelligence, String description, int adaptability,@JsonKey(name: 'life_span') String lifeSpan,@JsonKey(name: 'affection_level') int affectionLevel, CatImage? image
});


@override $CatImageCopyWith<$Res>? get image;

}
/// @nodoc
class __$CatBreedModelCopyWithImpl<$Res>
    implements _$CatBreedModelCopyWith<$Res> {
  __$CatBreedModelCopyWithImpl(this._self, this._then);

  final _CatBreedModel _self;
  final $Res Function(_CatBreedModel) _then;

/// Create a copy of CatBreedModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? origin = null,Object? temperament = null,Object? intelligence = null,Object? description = null,Object? adaptability = null,Object? lifeSpan = null,Object? affectionLevel = null,Object? image = freezed,}) {
  return _then(_CatBreedModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,temperament: null == temperament ? _self.temperament : temperament // ignore: cast_nullable_to_non_nullable
as String,intelligence: null == intelligence ? _self.intelligence : intelligence // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,adaptability: null == adaptability ? _self.adaptability : adaptability // ignore: cast_nullable_to_non_nullable
as int,lifeSpan: null == lifeSpan ? _self.lifeSpan : lifeSpan // ignore: cast_nullable_to_non_nullable
as String,affectionLevel: null == affectionLevel ? _self.affectionLevel : affectionLevel // ignore: cast_nullable_to_non_nullable
as int,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as CatImage?,
  ));
}

/// Create a copy of CatBreedModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CatImageCopyWith<$Res>? get image {
    if (_self.image == null) {
    return null;
  }

  return $CatImageCopyWith<$Res>(_self.image!, (value) {
    return _then(_self.copyWith(image: value));
  });
}
}


/// @nodoc
mixin _$CatImage {

 String get url;
/// Create a copy of CatImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatImageCopyWith<CatImage> get copyWith => _$CatImageCopyWithImpl<CatImage>(this as CatImage, _$identity);

  /// Serializes this CatImage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatImage&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'CatImage(url: $url)';
}


}

/// @nodoc
abstract mixin class $CatImageCopyWith<$Res>  {
  factory $CatImageCopyWith(CatImage value, $Res Function(CatImage) _then) = _$CatImageCopyWithImpl;
@useResult
$Res call({
 String url
});




}
/// @nodoc
class _$CatImageCopyWithImpl<$Res>
    implements $CatImageCopyWith<$Res> {
  _$CatImageCopyWithImpl(this._self, this._then);

  final CatImage _self;
  final $Res Function(CatImage) _then;

/// Create a copy of CatImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CatImage].
extension CatImagePatterns on CatImage {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatImage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatImage() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatImage value)  $default,){
final _that = this;
switch (_that) {
case _CatImage():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatImage value)?  $default,){
final _that = this;
switch (_that) {
case _CatImage() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatImage() when $default != null:
return $default(_that.url);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url)  $default,) {final _that = this;
switch (_that) {
case _CatImage():
return $default(_that.url);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url)?  $default,) {final _that = this;
switch (_that) {
case _CatImage() when $default != null:
return $default(_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CatImage implements CatImage {
  const _CatImage({required this.url});
  factory _CatImage.fromJson(Map<String, dynamic> json) => _$CatImageFromJson(json);

@override final  String url;

/// Create a copy of CatImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatImageCopyWith<_CatImage> get copyWith => __$CatImageCopyWithImpl<_CatImage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatImageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatImage&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'CatImage(url: $url)';
}


}

/// @nodoc
abstract mixin class _$CatImageCopyWith<$Res> implements $CatImageCopyWith<$Res> {
  factory _$CatImageCopyWith(_CatImage value, $Res Function(_CatImage) _then) = __$CatImageCopyWithImpl;
@override @useResult
$Res call({
 String url
});




}
/// @nodoc
class __$CatImageCopyWithImpl<$Res>
    implements _$CatImageCopyWith<$Res> {
  __$CatImageCopyWithImpl(this._self, this._then);

  final _CatImage _self;
  final $Res Function(_CatImage) _then;

/// Create a copy of CatImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,}) {
  return _then(_CatImage(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
