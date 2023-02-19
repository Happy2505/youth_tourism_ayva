import 'package:json_annotation/json_annotation.dart';

part 'news.g.dart';

@JsonSerializable(explicitToJson: true)
class AllNews{
  final List<News> list;

  AllNews(this.list);

  factory AllNews.fromJson(List<dynamic> json) => AllNews(json.map((e) => News.fromJson(e)).toList());

  Map<String, dynamic> toJson() => _$AllNewsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class News {
  final int id;
  final String name;
  final String description;
  final List<Hashtags> hashtags;
  final List<Images> images;




  factory News.fromJson(Map<String, dynamic> json) =>
      _$NewsFromJson(json);

  News(this.id, this.name, this.description, this.hashtags, this.images);


  Map<String, dynamic> toJson() => _$NewsToJson(this);
}

@JsonSerializable()
class Hashtags {
  final int id;
  final String text;

  Hashtags(this.id, this.text);

  factory Hashtags.fromJson(Map<String, dynamic> json) =>
      _$HashtagsFromJson(json);

  Map<String, dynamic> toJson() => _$HashtagsToJson(this);
}

@JsonSerializable()
class Images {
  final int id;
  final String  url;

  Images(this.id, this.url);

  factory Images.fromJson(Map<String, dynamic> json) =>
      _$ImagesFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}


