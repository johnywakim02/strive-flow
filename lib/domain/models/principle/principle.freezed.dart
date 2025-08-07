// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'principle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Principle {

@HiveField(0) String get title;@HiveField(1) String get description;
/// Create a copy of Principle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrincipleCopyWith<Principle> get copyWith => _$PrincipleCopyWithImpl<Principle>(this as Principle, _$identity);

  /// Serializes this Principle to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Principle&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description);

@override
String toString() {
  return 'Principle(title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class $PrincipleCopyWith<$Res>  {
  factory $PrincipleCopyWith(Principle value, $Res Function(Principle) _then) = _$PrincipleCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String title,@HiveField(1) String description
});




}
/// @nodoc
class _$PrincipleCopyWithImpl<$Res>
    implements $PrincipleCopyWith<$Res> {
  _$PrincipleCopyWithImpl(this._self, this._then);

  final Principle _self;
  final $Res Function(Principle) _then;

/// Create a copy of Principle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Principle].
extension PrinciplePatterns on Principle {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Principle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Principle() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Principle value)  $default,){
final _that = this;
switch (_that) {
case _Principle():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Principle value)?  $default,){
final _that = this;
switch (_that) {
case _Principle() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  String title, @HiveField(1)  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Principle() when $default != null:
return $default(_that.title,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  String title, @HiveField(1)  String description)  $default,) {final _that = this;
switch (_that) {
case _Principle():
return $default(_that.title,_that.description);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  String title, @HiveField(1)  String description)?  $default,) {final _that = this;
switch (_that) {
case _Principle() when $default != null:
return $default(_that.title,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Principle implements Principle {
  const _Principle({@HiveField(0) required this.title, @HiveField(1) required this.description});
  factory _Principle.fromJson(Map<String, dynamic> json) => _$PrincipleFromJson(json);

@override@HiveField(0) final  String title;
@override@HiveField(1) final  String description;

/// Create a copy of Principle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrincipleCopyWith<_Principle> get copyWith => __$PrincipleCopyWithImpl<_Principle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PrincipleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Principle&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description);

@override
String toString() {
  return 'Principle(title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class _$PrincipleCopyWith<$Res> implements $PrincipleCopyWith<$Res> {
  factory _$PrincipleCopyWith(_Principle value, $Res Function(_Principle) _then) = __$PrincipleCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String title,@HiveField(1) String description
});




}
/// @nodoc
class __$PrincipleCopyWithImpl<$Res>
    implements _$PrincipleCopyWith<$Res> {
  __$PrincipleCopyWithImpl(this._self, this._then);

  final _Principle _self;
  final $Res Function(_Principle) _then;

/// Create a copy of Principle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,}) {
  return _then(_Principle(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
