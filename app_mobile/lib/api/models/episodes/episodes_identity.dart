import 'package:json_annotation/json_annotation.dart';
part 'episodes_identity.g.dart';

@JsonSerializable()
class EpisodesModel {
  @JsonKey()
  int? id;
  @JsonKey()
  String? name;
  @JsonKey()
  int? movieId;
  @JsonKey()
  String? url;
  @JsonKey()
  int? seasonId;
  @JsonKey()
  String? createdAt;
  @JsonKey()
  String? updatedAt;
  @JsonKey()
  String? slug;

  EpisodesModel(
      {this.id,
      this.name,
      this.movieId,
      this.url,
      this.seasonId,
      this.createdAt,
      this.updatedAt,
      this.slug});
  factory EpisodesModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodesModelFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodesModelToJson(this);
}
