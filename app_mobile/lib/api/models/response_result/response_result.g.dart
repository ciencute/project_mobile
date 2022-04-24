// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseResult _$ResponseResultFromJson(Map<String, dynamic> json) =>
    ResponseResult(
      success: json['success'] as bool,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ResponseResultToJson(ResponseResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
    };
