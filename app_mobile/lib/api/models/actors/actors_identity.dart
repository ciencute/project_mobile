import 'package:json_annotation/json_annotation.dart';
part 'actors_identity.g.dart';

@JsonSerializable()
class ActorsModel {
  @JsonKey()
  int? id;
  @JsonKey()
  String? name;
  @JsonKey()
  String? img;
  @JsonKey()
  String? slug;
  @JsonKey()
  String? detail;
  @JsonKey()
  String? gender;
  @JsonKey()
  int? favoriteCount;

  ActorsModel(
      {this.id,
      this.name,
      this.img,
      this.slug,
      this.detail,
      this.gender,
      this.favoriteCount});

  factory ActorsModel.fromJson(Map<String, dynamic> json) =>
      _$ActorsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ActorsModelToJson(this);
}
