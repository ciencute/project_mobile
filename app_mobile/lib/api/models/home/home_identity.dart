class HomeModel {
  List<Categories>? categories;
  LatestMovie? latestMovie;

  HomeModel({this.categories, this.latestMovie});

  HomeModel.fromJson(Map<String, dynamic> json) {
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
    latestMovie = json['latestMovie'] != null
        ? new LatestMovie.fromJson(json['latestMovie'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    if (this.latestMovie != null) {
      data['latestMovie'] = this.latestMovie!.toJson();
    }
    return data;
  }
}

class Categories {
  int? id;
  String? name;
  String? description;
  String? slug;

  Categories({this.id, this.name, this.description, this.slug});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['slug'] = this.slug;
    return data;
  }
}

class LatestMovie {
  int? currentPage;
  List<Data>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Links>? links;
  String? nextPageUrl;
  String? path;
  int? perPage;
  Null? prevPageUrl;
  int? to;
  int? total;

  LatestMovie(
      {this.currentPage,
      this.data,
      this.firstPageUrl,
      this.from,
      this.lastPage,
      this.lastPageUrl,
      this.links,
      this.nextPageUrl,
      this.path,
      this.perPage,
      this.prevPageUrl,
      this.to,
      this.total});

  LatestMovie.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      links = <Links>[];
      json['links'].forEach((v) {
        links!.add(new Links.fromJson(v));
      });
    }
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this.currentPage;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['first_page_url'] = this.firstPageUrl;
    data['from'] = this.from;
    data['last_page'] = this.lastPage;
    data['last_page_url'] = this.lastPageUrl;
    if (this.links != null) {
      data['links'] = this.links!.map((v) => v.toJson()).toList();
    }
    data['next_page_url'] = this.nextPageUrl;
    data['path'] = this.path;
    data['per_page'] = this.perPage;
    data['prev_page_url'] = this.prevPageUrl;
    data['to'] = this.to;
    data['total'] = this.total;
    return data;
  }
}

class Data {
  int? id;
  String? title;
  String? originalTitle;
  String? img;
  String? url;
  String? embededCode;
  String? trailerKey;
  int? directorId;
  String? bgImg;
  String? description;
  int? countryId;
  int? duration;
  int? viewCount;
  int? categoryId;
  String? slug;

  int? isMovie18;
  int? isFinished;
  int? isMovieSeries;
  int? totalEpisode;
  String? quality;
  String? publishedAt;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.title,
      this.originalTitle,
      this.img,
      this.url,
      this.embededCode,
      this.trailerKey,
      this.directorId,
      this.bgImg,
      this.description,
      this.countryId,
      this.duration,
      this.viewCount,
      this.categoryId,
      this.slug,
  
      this.isMovie18,
      this.isFinished,
      this.isMovieSeries,
      this.totalEpisode,
      this.quality,
      this.publishedAt,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    originalTitle = json['original_title'];
    img = json['img'];
    url = json['url'];
    embededCode = json['embededCode'];
    trailerKey = json['trailerKey'];
    directorId = json['directorId'];
    bgImg = json['bgImg'];
    description = json['description'];
    countryId = json['countryId'];
    duration = json['duration'];
    viewCount = json['viewCount'];
    categoryId = json['categoryId'];
    slug = json['slug'];

    isMovie18 = json['isMovie18'];
    isFinished = json['isFinished'];
    isMovieSeries = json['isMovieSeries'];
    totalEpisode = json['totalEpisode'];
    quality = json['quality'];
    publishedAt = json['publishedAt'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['original_title'] = this.originalTitle;
    data['img'] = this.img;
    data['url'] = this.url;
    data['embededCode'] = this.embededCode;
    data['trailerKey'] = this.trailerKey;
    data['directorId'] = this.directorId;
    data['bgImg'] = this.bgImg;
    data['description'] = this.description;
    data['countryId'] = this.countryId;
    data['duration'] = this.duration;
    data['viewCount'] = this.viewCount;
    data['categoryId'] = this.categoryId;
    data['slug'] = this.slug;
 
    data['isMovie18'] = this.isMovie18;
    data['isFinished'] = this.isFinished;
    data['isMovieSeries'] = this.isMovieSeries;
    data['totalEpisode'] = this.totalEpisode;
    data['quality'] = this.quality;
    data['publishedAt'] = this.publishedAt;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}

class Links {
  String? url;
  String? label;
  bool? active;

  Links({this.url, this.label, this.active});

  Links.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    label = json['label'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['label'] = this.label;
    data['active'] = this.active;
    return data;
  }
}