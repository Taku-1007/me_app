import 'package:freezed_annotation/freezed_annotation.dart';

part 'career.freezed.dart';
part 'career.g.dart';

@freezed
class Career with _$Career {
  const factory Career({
    required String id,
    required String profileId,
    required String companyName,
    String? position,
    String? description,
    DateTime? startDate,
    DateTime? endDate,
    @Default(false) bool isCurrent,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Career;

  factory Career.fromJson(Map<String, dynamic> json) => _$CareerFromJson(json);
  
  @override
  // TODO: implement companyName
  String get companyName => throw UnimplementedError();
  
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
  // TODO: implement id
  String get id => throw UnimplementedError();
  
  @override
  // TODO: implement isCurrent
  bool get isCurrent => throw UnimplementedError();
  
  @override
  // TODO: implement position
  String? get position => throw UnimplementedError();
  
  @override
  // TODO: implement profileId
  String get profileId => throw UnimplementedError();
  
  @override
  // TODO: implement startDate
  DateTime? get startDate => throw UnimplementedError();
  
  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
  
  @override
  // TODO: implement updatedAt
  DateTime? get updatedAt => throw UnimplementedError();
}

