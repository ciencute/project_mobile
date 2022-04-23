// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ratings_identity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RatingsModel _$RatingsModelFromJson(Map<String, dynamic> json) => RatingsModel(
      ratingId: json['ratingId'] as int?,
      ratingPoint: json['ratingPoint'] as int?,
      userName: json['userName'] as String?,
    );

Map<String, dynamic> _$RatingsModelToJson(RatingsModel instance) =>
    <String, dynamic>{
      'ratingId': instance.ratingId,
      'ratingPoint': instance.ratingPoint,
      'userName': instance.userName,
    };
