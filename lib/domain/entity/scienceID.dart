import 'package:json_annotation/json_annotation.dart';

part 'scienceID.g.dart';

@JsonSerializable(explicitToJson: true)
class ScienceID {
  final int id;
  final String name;
  final University university;
  final ContactModel? contactModel;
  final int foundationDate;
  final List<Images> images;
  final String description;
  final String url;




  factory ScienceID.fromJson(Map<String, dynamic> json) =>
      _$ScienceIDFromJson(json);

  ScienceID(this.id, this.name, this.university, this.contactModel, this.foundationDate, this.images, this.description, this.url);



  Map<String, dynamic> toJson() => _$ScienceIDToJson(this);
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

@JsonSerializable()
class ContactModel {
  final int? id;
  final String? name;
  final String? phoneNumber;
  final String? email;



  factory ContactModel.fromJson(Map<String, dynamic> json) =>
      _$ContactModelFromJson(json);

  ContactModel(this.id, this.name, this.phoneNumber, this.email);

  Map<String, dynamic> toJson() => _$ContactModelToJson(this);
}


