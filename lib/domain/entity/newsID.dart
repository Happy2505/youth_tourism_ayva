import 'package:json_annotation/json_annotation.dart';

part 'newsID.g.dart';


@JsonSerializable(explicitToJson: true)
class NewsID {
  final int id;
  final String name;
  final String description;
  final List<Hashtags> hashtags;
  final List<Images> images;




  factory NewsID.fromJson(Map<String, dynamic> json) =>
      _$NewsIDFromJson(json);

  NewsID(this.id, this.name, this.description, this.hashtags, this.images);


  Map<String, dynamic> toJson() => _$NewsIDToJson(this);
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


