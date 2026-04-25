// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TasksModel {

 String get id; String get title; String get description; String get status; String? get assignedTo; String? get assignedBy; String? get dueDate; String? get createdAt;
/// Create a copy of TasksModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TasksModelCopyWith<TasksModel> get copyWith => _$TasksModelCopyWithImpl<TasksModel>(this as TasksModel, _$identity);

  /// Serializes this TasksModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TasksModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.assignedBy, assignedBy) || other.assignedBy == assignedBy)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,status,assignedTo,assignedBy,dueDate,createdAt);

@override
String toString() {
  return 'TasksModel(id: $id, title: $title, description: $description, status: $status, assignedTo: $assignedTo, assignedBy: $assignedBy, dueDate: $dueDate, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $TasksModelCopyWith<$Res>  {
  factory $TasksModelCopyWith(TasksModel value, $Res Function(TasksModel) _then) = _$TasksModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, String status, String? assignedTo, String? assignedBy, String? dueDate, String? createdAt
});




}
/// @nodoc
class _$TasksModelCopyWithImpl<$Res>
    implements $TasksModelCopyWith<$Res> {
  _$TasksModelCopyWithImpl(this._self, this._then);

  final TasksModel _self;
  final $Res Function(TasksModel) _then;

/// Create a copy of TasksModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? status = null,Object? assignedTo = freezed,Object? assignedBy = freezed,Object? dueDate = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as String?,assignedBy: freezed == assignedBy ? _self.assignedBy : assignedBy // ignore: cast_nullable_to_non_nullable
as String?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TasksModel].
extension TasksModelPatterns on TasksModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TasksModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TasksModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TasksModel value)  $default,){
final _that = this;
switch (_that) {
case _TasksModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TasksModel value)?  $default,){
final _that = this;
switch (_that) {
case _TasksModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String status,  String? assignedTo,  String? assignedBy,  String? dueDate,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TasksModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.status,_that.assignedTo,_that.assignedBy,_that.dueDate,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String status,  String? assignedTo,  String? assignedBy,  String? dueDate,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _TasksModel():
return $default(_that.id,_that.title,_that.description,_that.status,_that.assignedTo,_that.assignedBy,_that.dueDate,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  String status,  String? assignedTo,  String? assignedBy,  String? dueDate,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _TasksModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.status,_that.assignedTo,_that.assignedBy,_that.dueDate,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TasksModel implements TasksModel {
  const _TasksModel({required this.id, required this.title, required this.description, required this.status, this.assignedTo, this.assignedBy, this.dueDate, this.createdAt});
  factory _TasksModel.fromJson(Map<String, dynamic> json) => _$TasksModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  String description;
@override final  String status;
@override final  String? assignedTo;
@override final  String? assignedBy;
@override final  String? dueDate;
@override final  String? createdAt;

/// Create a copy of TasksModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TasksModelCopyWith<_TasksModel> get copyWith => __$TasksModelCopyWithImpl<_TasksModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TasksModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TasksModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.assignedTo, assignedTo) || other.assignedTo == assignedTo)&&(identical(other.assignedBy, assignedBy) || other.assignedBy == assignedBy)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,status,assignedTo,assignedBy,dueDate,createdAt);

@override
String toString() {
  return 'TasksModel(id: $id, title: $title, description: $description, status: $status, assignedTo: $assignedTo, assignedBy: $assignedBy, dueDate: $dueDate, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$TasksModelCopyWith<$Res> implements $TasksModelCopyWith<$Res> {
  factory _$TasksModelCopyWith(_TasksModel value, $Res Function(_TasksModel) _then) = __$TasksModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, String status, String? assignedTo, String? assignedBy, String? dueDate, String? createdAt
});




}
/// @nodoc
class __$TasksModelCopyWithImpl<$Res>
    implements _$TasksModelCopyWith<$Res> {
  __$TasksModelCopyWithImpl(this._self, this._then);

  final _TasksModel _self;
  final $Res Function(_TasksModel) _then;

/// Create a copy of TasksModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? status = null,Object? assignedTo = freezed,Object? assignedBy = freezed,Object? dueDate = freezed,Object? createdAt = freezed,}) {
  return _then(_TasksModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,assignedTo: freezed == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as String?,assignedBy: freezed == assignedBy ? _self.assignedBy : assignedBy // ignore: cast_nullable_to_non_nullable
as String?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
