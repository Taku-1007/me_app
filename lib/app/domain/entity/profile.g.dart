// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Profile _$ProfileFromJson(Map<String, dynamic> json) => _Profile(
  id: json['id'] as String,
  name: json['name'] as String?,
  bio: json['bio'] as String?,
  githubUrl: json['githubUrl'] as String?,
  twitterUrl: json['twitterUrl'] as String?,
  websiteUrl: json['websiteUrl'] as String?,
  avatarUrl: json['avatarUrl'] as String?,
  isPublic: json['isPublic'] as bool? ?? false,
  publicUrl: json['publicUrl'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$ProfileToJson(_Profile instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'bio': instance.bio,
  'githubUrl': instance.githubUrl,
  'twitterUrl': instance.twitterUrl,
  'websiteUrl': instance.websiteUrl,
  'avatarUrl': instance.avatarUrl,
  'isPublic': instance.isPublic,
  'publicUrl': instance.publicUrl,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};
