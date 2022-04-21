import '../ui_item/ui_item.dart';
import 'package:json_annotation/json_annotation.dart';
part 'home_identity.g.dart';

@JsonSerializable()
class HomeUIModel {
  @JsonKey()
  final List<Categories> categories;
  @JsonKey()
  final List<SliderModel> slider;
  @JsonKey()
  final Movies movies;

  HomeUIModel(
      {required this.categories, required this.slider, required this.movies});

  factory HomeUIModel.fromJson(Map<String, dynamic> json) =>
      _$HomeUIModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeUIModelToJson(this);
}

@JsonSerializable()
class Categories {
  @JsonKey()
  int? id;
  @JsonKey()
  String? name;
  @JsonKey()
  String? description;
  @JsonKey()
  String? slug;

  Categories({this.id, this.name, this.description, this.slug});

  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);

  Map<String, dynamic> toJson() => _$CategoriesToJson(this);
}

@JsonSerializable()
class SliderModel {
  @JsonKey()
  int? id;
  @JsonKey()
  String? name;
  @JsonKey()
  String? description;
  @JsonKey()
  String? imageUrl;
  @JsonKey()
  int? displayOrder;
  @JsonKey()
  String? targetUrl;

  SliderModel(
      {this.id,
      this.name,
      this.description,
      this.imageUrl,
      this.displayOrder,
      this.targetUrl});

  factory SliderModel.fromJson(Map<String, dynamic> json) => _$SliderFromJson(json);

  Map<String, dynamic> toJson() => _$SliderToJson(this);
}

@JsonSerializable()
class Movies {
  @JsonKey()
  MostViewMovies? mostViewMovies;
  @JsonKey()
  MostViewMovies? latestMovies;
  @JsonKey()
  MostViewMovies? tvMovies;
  @JsonKey()
  MostViewMovies? animationMovies;

  Movies(
      {this.mostViewMovies,
      this.latestMovies,
      this.tvMovies,
      this.animationMovies});
  factory Movies.fromJson(Map<String, dynamic> json) => _$MoviesFromJson(json);

  Map<String, dynamic> toJson() => _$MoviesToJson(this);
}

@JsonSerializable()
class MostViewMovies {
  @JsonKey()
  String? name;
  @JsonKey()
  String? url;
  @JsonKey()
  List<UIItem> data;

  MostViewMovies({this.name, this.url, required this.data});
  factory MostViewMovies.fromJson(Map<String, dynamic> json) =>
      _$MostViewMoviesFromJson(json);

  Map<String, dynamic> toJson() => _$MostViewMoviesToJson(this);
}
