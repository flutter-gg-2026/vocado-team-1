// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_admin_home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TestAdminHomeModel {

 int get id; String get firstName; String get lastName;
/// Create a copy of TestAdminHomeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TestAdminHomeModelCopyWith<TestAdminHomeModel> get copyWith => _$TestAdminHomeModelCopyWithImpl<TestAdminHomeModel>(this as TestAdminHomeModel, _$identity);

  /// Serializes this TestAdminHomeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TestAdminHomeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName);

@override
String toString() {
  return 'TestAdminHomeModel(id: $id, firstName: $firstName, lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class $TestAdminHomeModelCopyWith<$Res>  {
  factory $TestAdminHomeModelCopyWith(TestAdminHomeModel value, $Res Function(TestAdminHomeModel) _then) = _$TestAdminHomeModelCopyWithImpl;
@useResult
$Res call({
 int id, String firstName, String lastName
});




}
/// @nodoc
class _$TestAdminHomeModelCopyWithImpl<$Res>
    implements $TestAdminHomeModelCopyWith<$Res> {
  _$TestAdminHomeModelCopyWithImpl(this._self, this._then);

  final TestAdminHomeModel _self;
  final $Res Function(TestAdminHomeModel) _then;

/// Create a copy of TestAdminHomeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TestAdminHomeModel].
extension TestAdminHomeModelPatterns on TestAdminHomeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TestAdminHomeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TestAdminHomeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TestAdminHomeModel value)  $default,){
final _that = this;
switch (_that) {
case _TestAdminHomeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TestAdminHomeModel value)?  $default,){
final _that = this;
switch (_that) {
case _TestAdminHomeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String firstName,  String lastName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TestAdminHomeModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String firstName,  String lastName)  $default,) {final _that = this;
switch (_that) {
case _TestAdminHomeModel():
return $default(_that.id,_that.firstName,_that.lastName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String firstName,  String lastName)?  $default,) {final _that = this;
switch (_that) {
case _TestAdminHomeModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TestAdminHomeModel implements TestAdminHomeModel {
  const _TestAdminHomeModel({required this.id, required this.firstName, required this.lastName});
  factory _TestAdminHomeModel.fromJson(Map<String, dynamic> json) => _$TestAdminHomeModelFromJson(json);

@override final  int id;
@override final  String firstName;
@override final  String lastName;

/// Create a copy of TestAdminHomeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TestAdminHomeModelCopyWith<_TestAdminHomeModel> get copyWith => __$TestAdminHomeModelCopyWithImpl<_TestAdminHomeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TestAdminHomeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TestAdminHomeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName);

@override
String toString() {
  return 'TestAdminHomeModel(id: $id, firstName: $firstName, lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class _$TestAdminHomeModelCopyWith<$Res> implements $TestAdminHomeModelCopyWith<$Res> {
  factory _$TestAdminHomeModelCopyWith(_TestAdminHomeModel value, $Res Function(_TestAdminHomeModel) _then) = __$TestAdminHomeModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String firstName, String lastName
});




}
/// @nodoc
class __$TestAdminHomeModelCopyWithImpl<$Res>
    implements _$TestAdminHomeModelCopyWith<$Res> {
  __$TestAdminHomeModelCopyWithImpl(this._self, this._then);

  final _TestAdminHomeModel _self;
  final $Res Function(_TestAdminHomeModel) _then;

/// Create a copy of TestAdminHomeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,}) {
  return _then(_TestAdminHomeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
