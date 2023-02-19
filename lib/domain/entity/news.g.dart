// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllNews _$AllNewsFromJson(Map<String, dynamic> json) => AllNews(
      (json['list'] as List<dynamic>)
          .map((e) => News.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllNewsToJson(AllNews instance) => <String, dynamic>{
      'list': instance.list.map((e) => e.toJson()).toList(),
    };

News _$NewsFromJson(Map<String, dynamic> json) => News(
      json['id'] as int,
      json['name'] as String,
      json['description'] as String,
      (json['hashtags'] as List<dynamic>)
          .map((e) => Hashtags.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['images'] as List<dynamic>)
          .map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NewsToJson(News instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'hashtags': instance.hashtags.map((e) => e.toJson()).toList(),
      'images': instance.images.map((e) => e.toJson()).toList(),
    };

Hashtags _$HashtagsFromJson(Map<String, dynamic> json) => Hashtags(
      json['id'] as int,
      json['text'] as String,
    );

Map<String, dynamic> _$HashtagsToJson(Hashtags instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
    };

Images _$ImagesFromJson(Map<String, dynamic> json) => Images(
      json['id'] as int,
      json['url'] as String,
    );

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };
