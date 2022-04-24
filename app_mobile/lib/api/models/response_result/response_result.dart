import 'package:json_annotation/json_annotation.dart';
part 'response_result.g.dart';

@JsonSerializable()
class ResponseResult {
  @JsonKey()
  final bool success;
  @JsonKey()
  String? message;
  ResponseResult({required this.success, this.message});

  factory ResponseResult.fromJson(Map<String, dynamic> json) =>
      _$ResponseResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseResultToJson(this);
}
