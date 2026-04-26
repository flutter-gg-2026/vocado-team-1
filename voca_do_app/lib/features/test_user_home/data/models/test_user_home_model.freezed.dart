// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_user_home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TestUserHomeModel {

 String get id; String get userName; String get emailName; String get roleName;
/// Create a copy of TestUserHomeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TestUserHomeModelCopyWith<TestUserHomeModel> get copyWith => _$TestUserHomeModelCopyWithImpl<TestUserHomeModel>(this as TestUserHomeModel, _$identity);

  /// Serializes this TestUserHomeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TestUserHomeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.emailName, emailName) || other.emailName == emailName)&&(identical(other.roleName, roleName) || other.roleName == roleName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userName,emailName,roleName);

@override
String toString() {
  return 'TestUserHomeModel(id: $id, userName: $userName, emailName: $emailName, roleName: $roleName)';
}


}

/// @nodoc
abstract mixin class $TestUserHomeModelCopyWith<$Res>  {
  factory $TestUserHomeModelCopyWith(TestUserHomeModel value, $Res Function(TestUserHomeModel) _then) = _$TestUserHomeModelCopyWithImpl;
@useResult
$Res call({
 String id, String userName, String emailName, String roleName
});




}
/// @nodoc
class _$TestUserHomeModelCopyWithImpl<$Res>
    implements $TestUserHomeModelCopyWith<$Res> {
  _$TestUserHomeModelCopyWithImpl(this._self, this._then);

  final TestUserHomeModel _self;
  final $Res Function(TestUserHomeModel) _then;

/// Create a copy of TestUserHomeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userName = null,Object? emailName = null,Object? roleName = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,emailName: null == emailName ? _self.emailName : emailName // ignore: cast_nullable_to_non_nullable
as String,roleName: null == roleName ? _self.roleName : roleName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TestUserHomeModel].
extension TestUserHomeModelPatterns on TestUserHomeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TestUserHomeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TestUserHomeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TestUserHomeModel value)  $default,){
final _that = this;
switch (_that) {
case _TestUserHomeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TestUserHomeModel value)?  $default,){
final _that = this;
switch (_that) {
case _TestUserHomeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userName,  String emailName,  String roleName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TestUserHomeModel() when $default != null:
return $default(_that.id,_that.userName,_that.emailName,_that.roleName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userName,  String emailName,  String roleName)  $default,) {final _that = this;
switch (_that) {
case _TestUserHomeModel():
return $default(_that.id,_that.userName,_that.emailName,_that.roleName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userName,  String emailName,  String roleName)?  $default,) {final _that = this;
switch (_that) {
case _TestUserHomeModel() when $default != null:
return $default(_that.id,_that.userName,_that.emailName,_that.roleName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TestUserHomeModel implements TestUserHomeModel {
  const _TestUserHomeModel({required this.id, required this.userName, required this.emailName, required this.roleName});
  factory _TestUserHomeModel.fromJson(Map<String, dynamic> json) => _$TestUserHomeModelFromJson(json);

@override final  String id;
@override final  String userName;
@override final  String emailName;
@override final  String roleName;

/// Create a copy of TestUserHomeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TestUserHomeModelCopyWith<_TestUserHomeModel> get copyWith => __$TestUserHomeModelCopyWithImpl<_TestUserHomeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TestUserHomeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TestUserHomeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.emailName, emailName) || other.emailName == emailName)&&(identical(other.roleName, roleName) || other.roleName == roleName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userName,emailName,roleName);

@override
String toString() {
  return 'TestUserHomeModel(id: $id, userName: $userName, emailName: $emailName, roleName: $roleName)';
}


}

/// @nodoc
abstract mixin class _$TestUserHomeModelCopyWith<$Res> implements $TestUserHomeModelCopyWith<$Res> {
  factory _$TestUserHomeModelCopyWith(_TestUserHomeModel value, $Res Function(_TestUserHomeModel) _then) = __$TestUserHomeModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String userName, String emailName, String roleName
});




}
/// @nodoc
class __$TestUserHomeModelCopyWithImpl<$Res>
    implements _$TestUserHomeModelCopyWith<$Res> {
  __$TestUserHomeModelCopyWithImpl(this._self, this._then);

  final _TestUserHomeModel _self;
  final $Res Function(_TestUserHomeModel) _then;

/// Create a copy of TestUserHomeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userName = null,Object? emailName = null,Object? roleName = null,}) {
  return _then(_TestUserHomeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,emailName: null == emailName ? _self.emailName : emailName // ignore: cast_nullable_to_non_nullable
as String,roleName: null == roleName ? _self.roleName : roleName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
