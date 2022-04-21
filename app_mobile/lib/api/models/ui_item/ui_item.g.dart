// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIItem _$UIItemFromJson(Map<String, dynamic> json) => UIItem(
      id: json['id'] as int?,
      title: json['title'] as String?,
      originalTitle: json['originalTitle'] as String?,
      img: json['img'] as String?,
      url: json['url'] as String?,
      embededCode: json['embededCode'] as String?,
      trailerKey: json['trailerKey'] as String?,
      directorId: json['directorId'] as int?,
      bgImg: json['bgImg'] as String?,
      description: json['description'] as String?,
      countryId: json['countryId'] as int?,
      duration: json['duration'] as int?,
      viewCount: json['viewCount'] as int?,
      categoryId: json['categoryId'] as int?,
      slug: json['slug'] as String?,
      imdb: (json['imdb'] as num?)?.toDouble(),
      isMovie18: json['isMovie18'] as int?,
      isFinished: json['isFinished'] as int?,
      isMovieSeries: json['isMovieSeries'] as int?,
      totalEpisode: json['totalEpisode'] as int?,
      quality: json['quality'] as String?,
      publishedAt: json['publishedAt'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      averageRating: json['averageRating'] as int?,
      favoriteCount: json['favoriteCount'] as int?,
      countryName: json['countryName'] as String?,
      actors: (json['actors'] as List<dynamic>?)
          ?.map((e) => ActorsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      ratings: (json['ratings'] as List<dynamic>?)
          ?.map((e) => RatingsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      episodes: (json['episodes'] as List<dynamic>?)
          ?.map((e) => EpisodesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => CommentsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UIItemToJson(UIItem instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'originalTitle': instance.originalTitle,
      'img': instance.img,
      'url': instance.url,
      'embededCode': instance.embededCode,
      'trailerKey': instance.trailerKey,
      'directorId': instance.directorId,
      'bgImg': instance.bgImg,
      'description': instance.description,
      'countryId': instance.countryId,
      'duration': instance.duration,
      'viewCount': instance.viewCount,
      'categoryId': instance.categoryId,
      'slug': instance.slug,
      'imdb': instance.imdb,
      'isMovie18': instance.isMovie18,
      'isFinished': instance.isFinished,
      'isMovieSeries': instance.isMovieSeries,
      'totalEpisode': instance.totalEpisode,
      'quality': instance.quality,
      'publishedAt': instance.publishedAt,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'averageRating': instance.averageRating,
      'favoriteCount': instance.favoriteCount,
      'countryName': instance.countryName,
      'actors': instance.actors,
      'ratings': instance.ratings,
      'episodes': instance.episodes,
      'comments': instance.comments,
    };
