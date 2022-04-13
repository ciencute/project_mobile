import 'package:json_annotation/json_annotation.dart';
part 'user_identity.g.dart';

@JsonSerializable()
class UserModel {
  @JsonKey()
  final String accessToken;
  @JsonKey()
  final String tokenType;
  @JsonKey()
  final int expiresIn;
  @JsonKey()
  final UserUIModel user;

  UserModel(
      {required this.accessToken,
      required this.tokenType,
      required this.expiresIn,
      required this.user});
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

@JsonSerializable()
class UserUIModel {
  @JsonKey()
  final int id;
  @JsonKey()
  final String name;
  @JsonKey()
  final String email;
  @JsonKey()
  final String createdAt;
  @JsonKey()
  final String updatedAt;
  @JsonKey()
  final int roleId;
  @JsonKey()
  final String img;

  UserUIModel(
      {required this.id,
      required this.name,
      required this.email,
      required this.createdAt,
      required this.updatedAt,
      required this.roleId,
      required this.img});
  factory UserUIModel.fromJson(Map<String, dynamic> json) =>
      _$UserUIModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserUIModelToJson(this);
}
