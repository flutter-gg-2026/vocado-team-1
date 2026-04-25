// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SplashModel {

 bool get isLoggedIn; String? get userRole;
/// Create a copy of SplashModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SplashModelCopyWith<SplashModel> get copyWith => _$SplashModelCopyWithImpl<SplashModel>(this as SplashModel, _$identity);

  /// Serializes this SplashModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashModel&&(identical(other.isLoggedIn, isLoggedIn) || other.isLoggedIn == isLoggedIn)&&(identical(other.userRole, userRole) || other.userRole == userRole));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isLoggedIn,userRole);

@override
String toString() {
  return 'SplashModel(isLoggedIn: $isLoggedIn, userRole: $userRole)';
}


}

/// @nodoc
abstract mixin class $SplashModelCopyWith<$Res>  {
  factory $SplashModelCopyWith(SplashModel value, $Res Function(SplashModel) _then) = _$SplashModelCopyWithImpl;
@useResult
$Res call({
 bool isLoggedIn, String? userRole
});




}
/// @nodoc
class _$SplashModelCopyWithImpl<$Res>
    implements $SplashModelCopyWith<$Res> {
  _$SplashModelCopyWithImpl(this._self, this._then);

  final SplashModel _self;
  final $Res Function(SplashModel) _then;

/// Create a copy of SplashModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoggedIn = null,Object? userRole = freezed,}) {
  return _then(_self.copyWith(
isLoggedIn: null == isLoggedIn ? _self.isLoggedIn : isLoggedIn // ignore: cast_nullable_to_non_nullable
as bool,userRole: freezed == userRole ? _self.userRole : userRole // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SplashModel].
extension SplashModelPatterns on SplashModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SplashModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SplashModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SplashModel value)  $default,){
final _that = this;
switch (_that) {
case _SplashModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SplashModel value)?  $default,){
final _that = this;
switch (_that) {
case _SplashModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoggedIn,  String? userRole)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SplashModel() when $default != null:
return $default(_that.isLoggedIn,_that.userRole);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoggedIn,  String? userRole)  $default,) {final _that = this;
switch (_that) {
case _SplashModel():
return $default(_that.isLoggedIn,_that.userRole);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoggedIn,  String? userRole)?  $default,) {final _that = this;
switch (_that) {
case _SplashModel() when $default != null:
return $default(_that.isLoggedIn,_that.userRole);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SplashModel implements SplashModel {
  const _SplashModel({required this.isLoggedIn, required this.userRole});
  factory _SplashModel.fromJson(Map<String, dynamic> json) => _$SplashModelFromJson(json);

@override final  bool isLoggedIn;
@override final  String? userRole;

/// Create a copy of SplashModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SplashModelCopyWith<_SplashModel> get copyWith => __$SplashModelCopyWithImpl<_SplashModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SplashModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SplashModel&&(identical(other.isLoggedIn, isLoggedIn) || other.isLoggedIn == isLoggedIn)&&(identical(other.userRole, userRole) || other.userRole == userRole));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isLoggedIn,userRole);

@override
String toString() {
  return 'SplashModel(isLoggedIn: $isLoggedIn, userRole: $userRole)';
}


}

/// @nodoc
abstract mixin class _$SplashModelCopyWith<$Res> implements $SplashModelCopyWith<$Res> {
  factory _$SplashModelCopyWith(_SplashModel value, $Res Function(_SplashModel) _then) = __$SplashModelCopyWithImpl;
@override @useResult
$Res call({
 bool isLoggedIn, String? userRole
});




}
/// @nodoc
class __$SplashModelCopyWithImpl<$Res>
    implements _$SplashModelCopyWith<$Res> {
  __$SplashModelCopyWithImpl(this._self, this._then);

  final _SplashModel _self;
  final $Res Function(_SplashModel) _then;

/// Create a copy of SplashModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoggedIn = null,Object? userRole = freezed,}) {
  return _then(_SplashModel(
isLoggedIn: null == isLoggedIn ? _self.isLoggedIn : isLoggedIn // ignore: cast_nullable_to_non_nullable
as bool,userRole: freezed == userRole ? _self.userRole : userRole // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
