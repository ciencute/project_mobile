// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episodes_identity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodesModel _$EpisodesModelFromJson(Map<String, dynamic> json) =>
    EpisodesModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      movieId: json['movieId'] as int?,
      url: json['url'] as String?,
      seasonId: json['seasonId'] as int?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$EpisodesModelToJson(EpisodesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'movieId': instance.movieId,
      'url': instance.url,
      'seasonId': instance.seasonId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'slug': instance.slug,
    };
