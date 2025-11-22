// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'career.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Career {

 String get id; String get profileId; String get companyName; String? get position; String? get description; DateTime? get startDate; DateTime? get endDate; bool get isCurrent; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of Career
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CareerCopyWith<Career> get copyWith => _$CareerCopyWithImpl<Career>(this as Career, _$identity);

  /// Serializes this Career to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Career&&(identical(other.id, id) || other.id == id)&&(identical(other.profileId, profileId) || other.profileId == profileId)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.position, position) || other.position == position)&&(identical(other.description, description) || other.description == description)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.isCurrent, isCurrent) || other.isCurrent == isCurrent)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,profileId,companyName,position,description,startDate,endDate,isCurrent,createdAt,updatedAt);

@override
String toString() {
  return 'Career(id: $id, profileId: $profileId, companyName: $companyName, position: $position, description: $description, startDate: $startDate, endDate: $endDate, isCurrent: $isCurrent, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CareerCopyWith<$Res>  {
  factory $CareerCopyWith(Career value, $Res Function(Career) _then) = _$CareerCopyWithImpl;
@useResult
$Res call({
 String id, String profileId, String companyName, String? position, String? description, DateTime? startDate, DateTime? endDate, bool isCurrent, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$CareerCopyWithImpl<$Res>
    implements $CareerCopyWith<$Res> {
  _$CareerCopyWithImpl(this._self, this._then);

  final Career _self;
  final $Res Function(Career) _then;

/// Create a copy of Career
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? profileId = null,Object? companyName = null,Object? position = freezed,Object? description = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? isCurrent = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,profileId: null == profileId ? _self.profileId : profileId // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,isCurrent: null == isCurrent ? _self.isCurrent : isCurrent // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Career].
extension CareerPatterns on Career {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Career value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Career() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Career value)  $default,){
final _that = this;
switch (_that) {
case _Career():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Career value)?  $default,){
final _that = this;
switch (_that) {
case _Career() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String profileId,  String companyName,  String? position,  String? description,  DateTime? startDate,  DateTime? endDate,  bool isCurrent,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Career() when $default != null:
return $default(_that.id,_that.profileId,_that.companyName,_that.position,_that.description,_that.startDate,_that.endDate,_that.isCurrent,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String profileId,  String companyName,  String? position,  String? description,  DateTime? startDate,  DateTime? endDate,  bool isCurrent,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Career():
return $default(_that.id,_that.profileId,_that.companyName,_that.position,_that.description,_that.startDate,_that.endDate,_that.isCurrent,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String profileId,  String companyName,  String? position,  String? description,  DateTime? startDate,  DateTime? endDate,  bool isCurrent,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Career() when $default != null:
return $default(_that.id,_that.profileId,_that.companyName,_that.position,_that.description,_that.startDate,_that.endDate,_that.isCurrent,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Career implements Career {
  const _Career({required this.id, required this.profileId, required this.companyName, this.position, this.description, this.startDate, this.endDate, this.isCurrent = false, this.createdAt, this.updatedAt});
  factory _Career.fromJson(Map<String, dynamic> json) => _$CareerFromJson(json);

@override final  String id;
@override final  String profileId;
@override final  String companyName;
@override final  String? position;
@override final  String? description;
@override final  DateTime? startDate;
@override final  DateTime? endDate;
@override@JsonKey() final  bool isCurrent;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of Career
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CareerCopyWith<_Career> get copyWith => __$CareerCopyWithImpl<_Career>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CareerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Career&&(identical(other.id, id) || other.id == id)&&(identical(other.profileId, profileId) || other.profileId == profileId)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.position, position) || other.position == position)&&(identical(other.description, description) || other.description == description)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.isCurrent, isCurrent) || other.isCurrent == isCurrent)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,profileId,companyName,position,description,startDate,endDate,isCurrent,createdAt,updatedAt);

@override
String toString() {
  return 'Career(id: $id, profileId: $profileId, companyName: $companyName, position: $position, description: $description, startDate: $startDate, endDate: $endDate, isCurrent: $isCurrent, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CareerCopyWith<$Res> implements $CareerCopyWith<$Res> {
  factory _$CareerCopyWith(_Career value, $Res Function(_Career) _then) = __$CareerCopyWithImpl;
@override @useResult
$Res call({
 String id, String profileId, String companyName, String? position, String? description, DateTime? startDate, DateTime? endDate, bool isCurrent, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$CareerCopyWithImpl<$Res>
    implements _$CareerCopyWith<$Res> {
  __$CareerCopyWithImpl(this._self, this._then);

  final _Career _self;
  final $Res Function(_Career) _then;

/// Create a copy of Career
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? profileId = null,Object? companyName = null,Object? position = freezed,Object? description = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? isCurrent = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_Career(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,profileId: null == profileId ? _self.profileId : profileId // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,isCurrent: null == isCurrent ? _self.isCurrent : isCurrent // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
