// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllLogings _$AllLogingsFromJson(Map<String, dynamic> json) => AllLogings(
      (json['list'] as List<dynamic>)
          .map((e) => Logings.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllLogingsToJson(AllLogings instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

Logings _$LogingsFromJson(Map<String, dynamic> json) => Logings(
      json['id'] as int,
      json['soloConditions'] as String,
      json['orgConditions'] as String,
      json['name'] as String,
      json['address'] as String,
      json['foodType'] as String,
      json['minStayDuration'] as int,
      json['maxStayDuration'] as int,
      University.fromJson(json['university'] as Map<String, dynamic>),
      Contact.fromJson(json['contact'] as Map<String, dynamic>),
      (json['images'] as List<dynamic>)
          .map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['documents'] as List<dynamic>)
          .map((e) => Documents.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['services'] as List<dynamic>)
          .map((e) => Services.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['rooms'] as List<dynamic>)
          .map((e) => Rooms.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LogingsToJson(Logings instance) => <String, dynamic>{
      'id': instance.id,
      'soloConditions': instance.soloConditions,
      'orgConditions': instance.orgConditions,
      'name': instance.name,
      'address': instance.address,
      'foodType': instance.foodType,
      'minStayDuration': instance.minStayDuration,
      'maxStayDuration': instance.maxStayDuration,
      'university': instance.university.toJson(),
      'contact': instance.contact.toJson(),
      'images': instance.images.map((e) => e.toJson()).toList(),
      'documents': instance.documents.map((e) => e.toJson()).toList(),
      'services': instance.services.map((e) => e.toJson()).toList(),
      'rooms': instance.rooms.map((e) => e.toJson()).toList(),
    };

Rooms _$RoomsFromJson(Map<String, dynamic> json) => Rooms(
      json['id'] as int,
      json['type'] as String,
      json['quantity'] as int,
      json['cost'] as int,
      json['description'] as String,
      (json['images'] as List<dynamic>?)
          ?.map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RoomsToJson(Rooms instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'quantity': instance.quantity,
      'cost': instance.cost,
      'description': instance.description,
      'images': instance.images?.map((e) => e.toJson()).toList(),
    };

Services _$ServicesFromJson(Map<String, dynamic> json) => Services(
      json['id'] as int,
      json['name'] as String,
      json['description'] as String,
      json['cost'] as int,
    );

Map<String, dynamic> _$ServicesToJson(Services instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'cost': instance.cost,
    };

Documents _$DocumentsFromJson(Map<String, dynamic> json) => Documents(
      json['id'] as int,
      json['url'] as String,
    );

Map<String, dynamic> _$DocumentsToJson(Documents instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };

Contact _$ContactFromJson(Map<String, dynamic> json) => Contact(
      json['id'] as int,
      json['name'] as String,
      json['phoneNumber'] as String,
      json['email'] as String,
    );

Map<String, dynamic> _$ContactToJson(Contact instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
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
