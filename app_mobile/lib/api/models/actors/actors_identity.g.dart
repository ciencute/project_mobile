// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actors_identity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActorsModel _$ActorsModelFromJson(Map<String, dynamic> json) => ActorsModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      img: json['img'] as String?,
      slug: json['slug'] as String?,
      detail: json['detail'] as String?,
      gender: json['gender'] as String?,
      favoriteCount: json['favoriteCount'] as int?,
    );

Map<String, dynamic> _$ActorsModelToJson(ActorsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img': instance.img,
      'slug': instance.slug,
      'detail': instance.detail,
      'gender': instance.gender,
      'favoriteCount': instance.favoriteCount,
    };
