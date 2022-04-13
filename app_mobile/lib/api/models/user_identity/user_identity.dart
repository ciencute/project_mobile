import 'package:json_annotation/json_annotation.dart';
part 'user_identity.g.dart';

@JsonSerializable()
class UserModel {
  @JsonKey()
  String? accessToken;
  @JsonKey()
  String? tokenType;
  @JsonKey()
  int? expiresIn;
  @JsonKey()
  UserUIModel? user;

  UserModel({this.accessToken, this.tokenType, this.expiresIn, this.user});
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

@JsonSerializable()
class UserUIModel {
  @JsonKey()
  int? id;
  @JsonKey()
  String? name;
  @JsonKey()
  String? email;
  @JsonKey()
  String? createdAt;
  @JsonKey()
  String? updatedAt;
  @JsonKey()
  int? roleId;
  @JsonKey()
  String? img;

  UserUIModel(
      {this.id,
      this.name,
      this.email,
      this.createdAt,
      this.updatedAt,
      this.roleId,
      this.img});
  factory UserUIModel.fromJson(Map<String, dynamic> json) =>
      _$UserUIModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserUIModelToJson(this);
}
