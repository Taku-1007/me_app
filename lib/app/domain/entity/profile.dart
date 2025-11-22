import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  const factory Profile({
    required String id,
    String? name,
    String? bio,
    String? githubUrl,
    String? twitterUrl,
    String? websiteUrl,
    String? avatarUrl,
    @Default(false) bool isPublic,
    String? publicUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
      
        @override
        // TODO: implement avatarUrl
        String? get avatarUrl => throw UnimplementedError();
      
        @override
        // TODO: implement bio
        String? get bio => throw UnimplementedError();
      
        @override
        // TODO: implement createdAt
        DateTime? get createdAt => throw UnimplementedError();
      
        @override
        // TODO: implement githubUrl
        String? get githubUrl => throw UnimplementedError();
      
        @override
        // TODO: implement id
        String get id => throw UnimplementedError();
      
        @override
        // TODO: implement isPublic
        bool get isPublic => throw UnimplementedError();
      
        @override
        // TODO: implement name
        String? get name => throw UnimplementedError();
      
        @override
        // TODO: implement publicUrl
        String? get publicUrl => throw UnimplementedError();
      
        @override
        Map<String, dynamic> toJson() {
          // TODO: implement toJson
          throw UnimplementedError();
        }
      
        @override
        // TODO: implement twitterUrl
        String? get twitterUrl => throw UnimplementedError();
      
        @override
        // TODO: implement updatedAt
        DateTime? get updatedAt => throw UnimplementedError();
      
        @override
        // TODO: implement websiteUrl
        String? get websiteUrl => throw UnimplementedError();
}

