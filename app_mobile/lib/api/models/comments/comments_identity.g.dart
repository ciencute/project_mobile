// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_identity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentsModel _$CommentsModelFromJson(Map<String, dynamic> json) =>
    CommentsModel(
      id: json['id'] as int?,
      userId: json['userId'] as int?,
      movieId: json['movieId'] as int?,
      content: json['content'] as String?,
      createdAt: json['createdAt'] as String?,
      userName: json['userName'] as String?,
      img: json['img'] as String?,
      profileUrl: json['profileUrl'] as String?,
    );

Map<String, dynamic> _$CommentsModelToJson(CommentsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'movieId': instance.movieId,
      'content': instance.content,
      'createdAt': instance.createdAt,
      'userName': instance.userName,
      'img': instance.img,
      'profileUrl': instance.profileUrl,
    };
