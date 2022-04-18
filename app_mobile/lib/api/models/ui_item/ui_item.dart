import 'package:json_annotation/json_annotation.dart';
part 'ui_item.g.dart';

@JsonSerializable()
class UIItem {
  @JsonKey()
  int? id;
  @JsonKey()
  String? title;
  @JsonKey()
  String? originalTitle;
  @JsonKey()
  String? img;
  @JsonKey()
  String? url;
  @JsonKey()
  String? embededCode;
  @JsonKey()
  String? trailerKey;
  @JsonKey()
  dynamic directorId;
  @JsonKey()
  String? bgImg;
  @JsonKey()
  String? description;
  @JsonKey()
  dynamic countryId;
  @JsonKey()
  int? duration;
  @JsonKey()
  int? viewCount;
  @JsonKey()
  int? categoryId;
  @JsonKey()
  String? slug;
  @JsonKey()
  double? imdb;
  @JsonKey()
  int? isMovie18;
  @JsonKey()
  int? isFinished;
  @JsonKey()
  int? isMovieSeries;
  @JsonKey()
  int? totalEpisode;
  @JsonKey()
  String? quality;
  @JsonKey()
  String? publishedAt;
  @JsonKey()
  String? createdAt;
  @JsonKey()
  String? updatedAt;

  UIItem(
      {this.id,
      this.title,
      this.originalTitle,
      this.img,
      this.url,
      this.embededCode,
      this.trailerKey,
      this.directorId,
      this.bgImg,
      this.description,
      this.countryId,
      this.duration,
      this.viewCount,
      this.categoryId,
      this.slug,
      this.imdb,
      this.isMovie18,
      this.isFinished,
      this.isMovieSeries,
      this.totalEpisode,
      this.quality,
      this.publishedAt,
      this.createdAt,
      this.updatedAt});

  factory UIItem.fromJson(Map<String, dynamic> json) => _$UIItemFromJson(json);

  Map<String, dynamic> toJson() => _$UIItemToJson(this);
}
