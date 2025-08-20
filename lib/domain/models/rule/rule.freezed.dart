// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Rule {

@HiveField(0) String get title;@HiveField(1) RuleType get type;@HiveField(2) RuleSeverity get severity;@HiveField(3) String get description;
/// Create a copy of Rule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RuleCopyWith<Rule> get copyWith => _$RuleCopyWithImpl<Rule>(this as Rule, _$identity);

  /// Serializes this Rule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Rule&&(identical(other.title, title) || other.title == title)&&(identical(other.type, type) || other.type == type)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,type,severity,description);

@override
String toString() {
  return 'Rule(title: $title, type: $type, severity: $severity, description: $description)';
}


}

/// @nodoc
abstract mixin class $RuleCopyWith<$Res>  {
  factory $RuleCopyWith(Rule value, $Res Function(Rule) _then) = _$RuleCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String title,@HiveField(1) RuleType type,@HiveField(2) RuleSeverity severity,@HiveField(3) String description
});




}
/// @nodoc
class _$RuleCopyWithImpl<$Res>
    implements $RuleCopyWith<$Res> {
  _$RuleCopyWithImpl(this._self, this._then);

  final Rule _self;
  final $Res Function(Rule) _then;

/// Create a copy of Rule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? type = null,Object? severity = null,Object? description = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as RuleType,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as RuleSeverity,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Rule].
extension RulePatterns on Rule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Rule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Rule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Rule value)  $default,){
final _that = this;
switch (_that) {
case _Rule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Rule value)?  $default,){
final _that = this;
switch (_that) {
case _Rule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  String title, @HiveField(1)  RuleType type, @HiveField(2)  RuleSeverity severity, @HiveField(3)  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Rule() when $default != null:
return $default(_that.title,_that.type,_that.severity,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  String title, @HiveField(1)  RuleType type, @HiveField(2)  RuleSeverity severity, @HiveField(3)  String description)  $default,) {final _that = this;
switch (_that) {
case _Rule():
return $default(_that.title,_that.type,_that.severity,_that.description);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  String title, @HiveField(1)  RuleType type, @HiveField(2)  RuleSeverity severity, @HiveField(3)  String description)?  $default,) {final _that = this;
switch (_that) {
case _Rule() when $default != null:
return $default(_that.title,_that.type,_that.severity,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Rule implements Rule {
  const _Rule({@HiveField(0) required this.title, @HiveField(1) required this.type, @HiveField(2) required this.severity, @HiveField(3) required this.description});
  factory _Rule.fromJson(Map<String, dynamic> json) => _$RuleFromJson(json);

@override@HiveField(0) final  String title;
@override@HiveField(1) final  RuleType type;
@override@HiveField(2) final  RuleSeverity severity;
@override@HiveField(3) final  String description;

/// Create a copy of Rule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RuleCopyWith<_Rule> get copyWith => __$RuleCopyWithImpl<_Rule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RuleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Rule&&(identical(other.title, title) || other.title == title)&&(identical(other.type, type) || other.type == type)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,type,severity,description);

@override
String toString() {
  return 'Rule(title: $title, type: $type, severity: $severity, description: $description)';
}


}

/// @nodoc
abstract mixin class _$RuleCopyWith<$Res> implements $RuleCopyWith<$Res> {
  factory _$RuleCopyWith(_Rule value, $Res Function(_Rule) _then) = __$RuleCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String title,@HiveField(1) RuleType type,@HiveField(2) RuleSeverity severity,@HiveField(3) String description
});




}
/// @nodoc
class __$RuleCopyWithImpl<$Res>
    implements _$RuleCopyWith<$Res> {
  __$RuleCopyWithImpl(this._self, this._then);

  final _Rule _self;
  final $Res Function(_Rule) _then;

/// Create a copy of Rule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? type = null,Object? severity = null,Object? description = null,}) {
  return _then(_Rule(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as RuleType,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as RuleSeverity,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
