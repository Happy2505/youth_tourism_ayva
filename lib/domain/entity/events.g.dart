// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllEvents _$AllEventsFromJson(Map<String, dynamic> json) => AllEvents(
      (json['list'] as List<dynamic>)
          .map((e) => Eventss.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllEventsToJson(AllEvents instance) => <String, dynamic>{
      'list': instance.list.map((e) => e.toJson()).toList(),
    };

Eventss _$EventssFromJson(Map<String, dynamic> json) => Eventss(
      json['id'] as int,
      json['type'] as String,
      json['name'] as String,
      json['speciality'] as String,
      json['description'] as String,
      json['cost'] as int,
      json['startDate'] as String,
      json['finishDate'] as String,
      University.fromJson(json['university'] as Map<String, dynamic>),
      (json['images'] as List<dynamic>)
          .map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EventssToJson(Eventss instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'speciality': instance.speciality,
      'description': instance.description,
      'cost': instance.cost,
      'startDate': instance.startDate,
      'finishDate': instance.finishDate,
      'university': instance.university.toJson(),
      'images': instance.images.map((e) => e.toJson()).toList(),
    };

Images _$ImagesFromJson(Map<String, dynamic> json) => Images(
      json['id'] as int,
      json['url'] as String,
    );

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };

University _$UniversityFromJson(Map<String, dynamic> json) => University(
      json['id'] as int,
      json['name'] as String,
      json['district'] as String,
      json['city'] as String,
      json['url'] as String,
    );

Map<String, dynamic> _$UniversityToJson(University instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'district': instance.district,
      'city': instance.city,
      'url': instance.url,
    };
