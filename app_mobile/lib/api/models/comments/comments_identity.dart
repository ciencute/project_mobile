import 'package:json_annotation/json_annotation.dart';
part 'comments_identity.g.dart';

@JsonSerializable()
class CommentsModel {
  @JsonKey()
  int? id;
  @JsonKey()
  int? userId;
  @JsonKey()
  int? movieId;
  @JsonKey()
  String? content;
  @JsonKey()
  String? createdAt;
  @JsonKey()
  String? userName;
  @JsonKey()
  String? img;
  @JsonKey()
  String? profileUrl;

  CommentsModel(
      {this.id,
      this.userId,
      this.movieId,
      this.content,
      this.createdAt,
      this.userName,
      this.img,
      this.profileUrl});

  factory CommentsModel.fromJson(Map<String, dynamic> json) =>
      _$CommentsModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommentsModelToJson(this);
}
