// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_identity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeUIModel _$HomeUIModelFromJson(Map<String, dynamic> json) => HomeUIModel(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Categories.fromJson(e as Map<String, dynamic>))
          .toList(),
      slider: (json['slider'] as List<dynamic>)
          .map((e) => SliderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      movies: Movies.fromJson(json['movies'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomeUIModelToJson(HomeUIModel instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'slider': instance.slider,
      'movies': instance.movies,
    };

Categories _$CategoriesFromJson(Map<String, dynamic> json) => Categories(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$CategoriesToJson(Categories instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'slug': instance.slug,
    };

SliderModel _$SliderModelFromJson(Map<String, dynamic> json) => SliderModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      displayOrder: json['displayOrder'] as int?,
      targetUrl: json['targetUrl'] as String?,
    );

Map<String, dynamic> _$SliderModelToJson(SliderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'displayOrder': instance.displayOrder,
      'targetUrl': instance.targetUrl,
    };

Movies _$MoviesFromJson(Map<String, dynamic> json) => Movies(
      mostViewMovies: json['mostViewMovies'] == null
          ? null
          : MostViewMovies.fromJson(
              json['mostViewMovies'] as Map<String, dynamic>),
      latestMovies: json['latestMovies'] == null
          ? null
          : MostViewMovies.fromJson(
              json['latestMovies'] as Map<String, dynamic>),
      tvMovies: json['tvMovies'] == null
          ? null
          : MostViewMovies.fromJson(json['tvMovies'] as Map<String, dynamic>),
      animationMovies: json['animationMovies'] == null
          ? null
          : MostViewMovies.fromJson(
              json['animationMovies'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MoviesToJson(Movies instance) => <String, dynamic>{
      'mostViewMovies': instance.mostViewMovies,
      'latestMovies': instance.latestMovies,
      'tvMovies': instance.tvMovies,
      'animationMovies': instance.animationMovies,
    };

MostViewMovies _$MostViewMoviesFromJson(Map<String, dynamic> json) =>
    MostViewMovies(
      name: json['name'] as String?,
      url: json['url'] as String?,
      data: (json['data'] as List<dynamic>)
          .map((e) => UIItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MostViewMoviesToJson(MostViewMovies instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'data': instance.data,
    };
