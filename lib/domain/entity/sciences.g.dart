// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sciences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllSciences _$AllSciencesFromJson(Map<String, dynamic> json) => AllSciences(
      (json['list'] as List<dynamic>)
          .map((e) => Sciences.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllSciencesToJson(AllSciences instance) =>
    <String, dynamic>{
      'list': instance.list.map((e) => e.toJson()).toList(),
    };

Sciences _$SciencesFromJson(Map<String, dynamic> json) => Sciences(
      json['id'] as int,
      json['name'] as String,
      University.fromJson(json['university'] as Map<String, dynamic>),
      json['contactModel'] == null
          ? null
          : ContactModel.fromJson(json['contactModel'] as Map<String, dynamic>),
      json['foundationDate'] as int,
      (json['images'] as List<dynamic>)
          .map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['description'] as String,
      json['url'] as String,
    );

Map<String, dynamic> _$SciencesToJson(Sciences instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'university': instance.university.toJson(),
      'contactModel': instance.contactModel?.toJson(),
      'foundationDate': instance.foundationDate,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'description': instance.description,
      'url': instance.url,
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

ContactModel _$ContactModelFromJson(Map<String, dynamic> json) => ContactModel(
      json['id'] as int,
      json['name'] as String,
      json['phoneNumber'] as String,
      json['email'] as String,
    );

Map<String, dynamic> _$ContactModelToJson(ContactModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
    };
