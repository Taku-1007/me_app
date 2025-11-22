// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'career.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Career _$CareerFromJson(Map<String, dynamic> json) => _Career(
  id: json['id'] as String,
  profileId: json['profileId'] as String,
  companyName: json['companyName'] as String,
  position: json['position'] as String?,
  description: json['description'] as String?,
  startDate: json['startDate'] == null
      ? null
      : DateTime.parse(json['startDate'] as String),
  endDate: json['endDate'] == null
      ? null
      : DateTime.parse(json['endDate'] as String),
  isCurrent: json['isCurrent'] as bool? ?? false,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$CareerToJson(_Career instance) => <String, dynamic>{
  'id': instance.id,
  'profileId': instance.profileId,
  'companyName': instance.companyName,
  'position': instance.position,
  'description': instance.description,
  'startDate': instance.startDate?.toIso8601String(),
  'endDate': instance.endDate?.toIso8601String(),
  'isCurrent': instance.isCurrent,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};
