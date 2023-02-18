import 'package:json_annotation/json_annotation.dart';

part 'eventID.g.dart';


@JsonSerializable(explicitToJson: true)
class EventID {
  final int id;
  final String type;
  final String name;
  final String speciality;
  final String description;
  final int cost;
  final String startDate;
  final String finishDate;
  final University university;
  final List<Images> images;




  factory EventID.fromJson(Map<String, dynamic> json) =>
      _$EventIDFromJson(json);

  EventID(this.id, this.type, this.name, this.speciality, this.description, this.cost, this.startDate, this.finishDate, this.university, this.images);

  Map<String, dynamic> toJson() => _$EventIDToJson(this);
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


