import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
class Project with _$Project {
  const factory Project({
    required String id,
    required String profileId,
    required String name,
    String? description,
    String? url,
    String? githubUrl,
    List<String>? imageUrls,
    List<String>? technologies,
    DateTime? startDate,
    DateTime? endDate,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
      
        @override
        // TODO: implement createdAt
        DateTime? get createdAt => throw UnimplementedError();
      
        @override
        // TODO: implement description
        String? get description => throw UnimplementedError();
      
        @override
        // TODO: implement endDate
        DateTime? get endDate => throw UnimplementedError();
      
        @override
        // TODO: implement githubUrl
        String? get githubUrl => throw UnimplementedError();
      
        @override
        // TODO: implement id
        String get id => throw UnimplementedError();
      
        @override
        // TODO: implement imageUrls
        List<String>? get imageUrls => throw UnimplementedError();
      
        @override
        // TODO: implement name
        String get name => throw UnimplementedError();
      
        @override
        // TODO: implement profileId
        String get profileId => throw UnimplementedError();
      
        @override
        // TODO: implement startDate
        DateTime? get startDate => throw UnimplementedError();
      
        @override
        // TODO: implement technologies
        List<String>? get technologies => throw UnimplementedError();
      
        @override
        Map<String, dynamic> toJson() {
          // TODO: implement toJson
          throw UnimplementedError();
        }
      
        @override
        // TODO: implement updatedAt
        DateTime? get updatedAt => throw UnimplementedError();
      
        @override
        // TODO: implement url
        String? get url => throw UnimplementedError();
}

