import 'package:freezed_annotation/freezed_annotation.dart';

part 'skill.freezed.dart';
part 'skill.g.dart';

@freezed
class Skill with _$Skill {
  const factory Skill({
    required String id,
    required String profileId,
    required String name,
    String? level,
    int? yearsOfExperience,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Skill;

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);
  
  @override
  // TODO: implement createdAt
  DateTime? get createdAt => throw UnimplementedError();
  
  @override
  // TODO: implement id
  String get id => throw UnimplementedError();
  
  @override
  // TODO: implement level
  String? get level => throw UnimplementedError();
  
  @override
  // TODO: implement name
  String get name => throw UnimplementedError();
  
  @override
  // TODO: implement profileId
  String get profileId => throw UnimplementedError();
  
  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
  
  @override
  // TODO: implement updatedAt
  DateTime? get updatedAt => throw UnimplementedError();
  
  @override
  // TODO: implement yearsOfExperience
  int? get yearsOfExperience => throw UnimplementedError();
}

