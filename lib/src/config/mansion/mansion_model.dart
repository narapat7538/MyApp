// To parse this JSON data, do
//
//     final mansionModel = mansionModelFromJson(jsonString);

import 'dart:convert';

MansionModel mansionModelFromJson(String str) => MansionModel.fromJson(json.decode(str));

String mansionModelToJson(MansionModel data) => json.encode(data.toJson());

class MansionModel {
  MansionModel({
    this.mansions,
  });

  List<Mansion> mansions;

  factory MansionModel.fromJson(Map<String, dynamic> json) => MansionModel(
    mansions: List<Mansion>.from(json["mansions"].map((x) => Mansion.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "mansions": List<dynamic>.from(mansions.map((x) => x.toJson())),
  };
}

class Mansion {
  Mansion({
    this.mansionId,
    this.mansionName,
    this.mansionPrice,
    this.mansionLocation,
    this.mansionPhone,
    this.mansionLimitedroom,
    this.mansionFacilities,
    this.mansionType,
    this.mansionDetail,
    this.mansionImage,
  });

  String mansionId;
  String mansionName;
  String mansionPrice;
  String mansionLocation;
  String mansionPhone;
  String mansionLimitedroom;
  String mansionFacilities;
  String mansionType;
  String mansionDetail;
  String mansionImage;

  factory Mansion.fromJson(Map<String, dynamic> json) => Mansion(
    mansionId: json["mansion_id"],
    mansionName: json["mansion_name"],
    mansionPrice: json["mansion_price"],
    mansionLocation: json["mansion_location"],
    mansionPhone: json["mansion_phone"],
    mansionLimitedroom: json["mansion_limitedroom"],
    mansionFacilities: json["mansion_facilities"],
    mansionType: json["mansion_type"],
    mansionDetail: json["mansion_detail"],
    mansionImage: json["mansion_image"],
  );

  Map<String, dynamic> toJson() => {
    "mansion_id": mansionId,
    "mansion_name": mansionName,
    "mansion_price": mansionPrice,
    "mansion_location": mansionLocation,
    "mansion_phone": mansionPhone,
    "mansion_limitedroom": mansionLimitedroom,
    "mansion_facilities": mansionFacilities,
    "mansion_type": mansionType,
    "mansion_detail": mansionDetail,
    "mansion_image": mansionImage,
  };
}
