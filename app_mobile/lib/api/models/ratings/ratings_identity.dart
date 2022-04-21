import 'package:json_annotation/json_annotation.dart';
part 'ratings_identity.g.dart';

@JsonSerializable()
class RatingsModel {
  @JsonKey()
  int? ratingId;
  @JsonKey()
  int? ratingPoint;
  @JsonKey()
  String? userName;

  RatingsModel({this.ratingId, this.ratingPoint, this.userName});
  factory RatingsModel.fromJson(Map<String, dynamic> json) =>
      _$RatingsModelFromJson(json);

  Map<String, dynamic> toJson() => _$RatingsModelToJson(this);
}
