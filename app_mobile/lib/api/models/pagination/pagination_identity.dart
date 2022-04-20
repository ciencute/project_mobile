import 'package:json_annotation/json_annotation.dart';

import '../ui_item/ui_item.dart';

part 'pagination_identity.g.dart';

@JsonSerializable()
class PaginationModel {
  @JsonKey()
  int? currentPage;
  @JsonKey()
  List<UIItem>? data;
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

  PaginationModel(
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

  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationModelToJson(this);
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
