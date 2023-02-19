import 'package:json_annotation/json_annotation.dart';

part 'logings.g.dart';

@JsonSerializable()
class AllLogings{
  final List<Logings> list;

  AllLogings(this.list);

  factory AllLogings.fromJson(List<dynamic> json) => AllLogings(json.map((e) => Logings.fromJson(e)).toList());

  Map<String, dynamic> toJson() => _$AllLogingsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Logings {
  final int id;
  final String soloConditions;
  final String orgConditions;
  final String name;
  final String address;
  final String foodType;
  final int minStayDuration;
  final int maxStayDuration;
  final University university;
  final Contact contact;
  final List<Images> images;
  final List<Documents> documents;
  final List<Services> services;
  final List<Rooms> rooms;




  factory Logings.fromJson(Map<String, dynamic> json) =>
      _$LogingsFromJson(json);

  Logings(this.id, this.soloConditions, this.orgConditions, this.name, this.address, this.foodType, this.minStayDuration, this.maxStayDuration, this.university, this.contact, this.images, this.documents, this.services, this.rooms);


  Map<String, dynamic> toJson() => _$LogingsToJson(this);
}
@JsonSerializable(explicitToJson: true)
class Rooms {
  final int id;
  final String type;
  final int quantity;
  final int cost;
  final String description;
  final List<Images>? images;

  Rooms(this.id, this.type, this.quantity, this.cost, this.description, this.images);

  factory Rooms.fromJson(Map<String, dynamic> json) =>
      _$RoomsFromJson(json);

  Map<String, dynamic> toJson() => _$RoomsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Services {
  final int id;
  final String name;
  final String description;
  final int cost;

  Services(this.id, this.name, this.description, this.cost);

  factory Services.fromJson(Map<String, dynamic> json) =>
      _$ServicesFromJson(json);

  Map<String, dynamic> toJson() => _$ServicesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Documents {
  final int id;
  final String url;

  Documents(this.id, this.url);

  factory Documents.fromJson(Map<String, dynamic> json) =>
      _$DocumentsFromJson(json);

  Map<String, dynamic> toJson() => _$DocumentsToJson(this);
}

@JsonSerializable()
class Contact {
  final int id;
  final String name;
  final String phoneNumber;
  final String email;

  Contact(this.id, this.name, this.phoneNumber, this.email);

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);

  Map<String, dynamic> toJson() => _$ContactToJson(this);
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

@JsonSerializable(explicitToJson: true)
class University{
  final int id;
  final String name;
  final String district;
  final String city;
  final String url;

  University(this.id, this.name, this.district, this.city, this.url);


  factory University.fromJson(Map<String, dynamic> json) =>
      _$UniversityFromJson(json);

  Map<String, dynamic> toJson() => _$UniversityToJson(this);
}


