// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_breed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CatBreed {

 String get id; String get name; String get temperament; String get origin; String get description; int get adaptability; int get intelligence; int get affectionLevel; String get lifeSpan; String? get imageUrl;
/// Create a copy of CatBreed
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatBreedCopyWith<CatBreed> get copyWith => _$CatBreedCopyWithImpl<CatBreed>(this as CatBreed, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatBreed&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.temperament, temperament) || other.temperament == temperament)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.description, description) || other.description == description)&&(identical(other.adaptability, adaptability) || other.adaptability == adaptability)&&(identical(other.intelligence, intelligence) || other.intelligence == intelligence)&&(identical(other.affectionLevel, affectionLevel) || other.affectionLevel == affectionLevel)&&(identical(other.lifeSpan, lifeSpan) || other.lifeSpan == lifeSpan)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,temperament,origin,description,adaptability,intelligence,affectionLevel,lifeSpan,imageUrl);

@override
String toString() {
  return 'CatBreed(id: $id, name: $name, temperament: $temperament, origin: $origin, description: $description, adaptability: $adaptability, intelligence: $intelligence, affectionLevel: $affectionLevel, lifeSpan: $lifeSpan, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $CatBreedCopyWith<$Res>  {
  factory $CatBreedCopyWith(CatBreed value, $Res Function(CatBreed) _then) = _$CatBreedCopyWithImpl;
@useResult
$Res call({
 String id, String name, String temperament, String origin, String description, int adaptability, int intelligence, int affectionLevel, String lifeSpan, String? imageUrl
});




}
/// @nodoc
class _$CatBreedCopyWithImpl<$Res>
    implements $CatBreedCopyWith<$Res> {
  _$CatBreedCopyWithImpl(this._self, this._then);

  final CatBreed _self;
  final $Res Function(CatBreed) _then;

/// Create a copy of CatBreed
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? temperament = null,Object? origin = null,Object? description = null,Object? adaptability = null,Object? intelligence = null,Object? affectionLevel = null,Object? lifeSpan = null,Object? imageUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,temperament: null == temperament ? _self.temperament : temperament // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,adaptability: null == adaptability ? _self.adaptability : adaptability // ignore: cast_nullable_to_non_nullable
as int,intelligence: null == intelligence ? _self.intelligence : intelligence // ignore: cast_nullable_to_non_nullable
as int,affectionLevel: null == affectionLevel ? _self.affectionLevel : affectionLevel // ignore: cast_nullable_to_non_nullable
as int,lifeSpan: null == lifeSpan ? _self.lifeSpan : lifeSpan // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CatBreed].
extension CatBreedPatterns on CatBreed {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatBreed value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatBreed() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatBreed value)  $default,){
final _that = this;
switch (_that) {
case _CatBreed():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatBreed value)?  $default,){
final _that = this;
switch (_that) {
case _CatBreed() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String temperament,  String origin,  String description,  int adaptability,  int intelligence,  int affectionLevel,  String lifeSpan,  String? imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatBreed() when $default != null:
return $default(_that.id,_that.name,_that.temperament,_that.origin,_that.description,_that.adaptability,_that.intelligence,_that.affectionLevel,_that.lifeSpan,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String temperament,  String origin,  String description,  int adaptability,  int intelligence,  int affectionLevel,  String lifeSpan,  String? imageUrl)  $default,) {final _that = this;
switch (_that) {
case _CatBreed():
return $default(_that.id,_that.name,_that.temperament,_that.origin,_that.description,_that.adaptability,_that.intelligence,_that.affectionLevel,_that.lifeSpan,_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String temperament,  String origin,  String description,  int adaptability,  int intelligence,  int affectionLevel,  String lifeSpan,  String? imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _CatBreed() when $default != null:
return $default(_that.id,_that.name,_that.temperament,_that.origin,_that.description,_that.adaptability,_that.intelligence,_that.affectionLevel,_that.lifeSpan,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _CatBreed implements CatBreed {
  const _CatBreed({required this.id, required this.name, required this.temperament, required this.origin, required this.description, required this.adaptability, required this.intelligence, required this.affectionLevel, required this.lifeSpan, this.imageUrl});
  

@override final  String id;
@override final  String name;
@override final  String temperament;
@override final  String origin;
@override final  String description;
@override final  int adaptability;
@override final  int intelligence;
@override final  int affectionLevel;
@override final  String lifeSpan;
@override final  String? imageUrl;

/// Create a copy of CatBreed
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatBreedCopyWith<_CatBreed> get copyWith => __$CatBreedCopyWithImpl<_CatBreed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatBreed&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.temperament, temperament) || other.temperament == temperament)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.description, description) || other.description == description)&&(identical(other.adaptability, adaptability) || other.adaptability == adaptability)&&(identical(other.intelligence, intelligence) || other.intelligence == intelligence)&&(identical(other.affectionLevel, affectionLevel) || other.affectionLevel == affectionLevel)&&(identical(other.lifeSpan, lifeSpan) || other.lifeSpan == lifeSpan)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,temperament,origin,description,adaptability,intelligence,affectionLevel,lifeSpan,imageUrl);

@override
String toString() {
  return 'CatBreed(id: $id, name: $name, temperament: $temperament, origin: $origin, description: $description, adaptability: $adaptability, intelligence: $intelligence, affectionLevel: $affectionLevel, lifeSpan: $lifeSpan, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$CatBreedCopyWith<$Res> implements $CatBreedCopyWith<$Res> {
  factory _$CatBreedCopyWith(_CatBreed value, $Res Function(_CatBreed) _then) = __$CatBreedCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String temperament, String origin, String description, int adaptability, int intelligence, int affectionLevel, String lifeSpan, String? imageUrl
});




}
/// @nodoc
class __$CatBreedCopyWithImpl<$Res>
    implements _$CatBreedCopyWith<$Res> {
  __$CatBreedCopyWithImpl(this._self, this._then);

  final _CatBreed _self;
  final $Res Function(_CatBreed) _then;

/// Create a copy of CatBreed
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? temperament = null,Object? origin = null,Object? description = null,Object? adaptability = null,Object? intelligence = null,Object? affectionLevel = null,Object? lifeSpan = null,Object? imageUrl = freezed,}) {
  return _then(_CatBreed(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,temperament: null == temperament ? _self.temperament : temperament // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,adaptability: null == adaptability ? _self.adaptability : adaptability // ignore: cast_nullable_to_non_nullable
as int,intelligence: null == intelligence ? _self.intelligence : intelligence // ignore: cast_nullable_to_non_nullable
as int,affectionLevel: null == affectionLevel ? _self.affectionLevel : affectionLevel // ignore: cast_nullable_to_non_nullable
as int,lifeSpan: null == lifeSpan ? _self.lifeSpan : lifeSpan // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
