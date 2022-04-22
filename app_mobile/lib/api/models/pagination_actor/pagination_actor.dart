import 'package:app_mobile/api/models/actors/actors_identity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pagination_actor.g.dart';

@JsonSerializable()
class PaginationActorModel {
  @JsonKey()
  int? currentPage;
  @JsonKey()
  List<ActorsModel>? data;
  @JsonKey()
  String? firstPageUrl;
  @JsonKey()
  int? from;
  @JsonKey()
  int? lastPage;
  @JsonKey()
  String? lastPageUrl;
  @JsonKey()
  List<Links>? links;
  @JsonKey()
  String? nextPageUrl;
  @JsonKey()
  String? path;
  @JsonKey()
  int? perPage;
  @JsonKey()
  dynamic prevPageUrl;
  @JsonKey()
  int? to;
  @JsonKey()
  int? total;

  PaginationActorModel(
      {this.currentPage,
      this.data,
      this.firstPageUrl,
      this.from,
      this.lastPage,
      this.lastPageUrl,
      this.links,
      this.nextPageUrl,
      this.path,
      this.perPage,
      this.prevPageUrl,
      this.to,
      this.total});

  factory PaginationActorModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationActorModelFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationActorModelToJson(this);
}

@JsonSerializable()
class Links {
  @JsonKey()
  String? url;
  @JsonKey()
  String? label;
  @JsonKey()
  bool? active;
  Links({this.url, this.label, this.active});

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}
