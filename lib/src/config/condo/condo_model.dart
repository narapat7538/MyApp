// To parse this JSON data, do
//
//     final gameModel = gameModelFromJson(jsonString);

import 'dart:convert';

CondoModel CondoModelFromJson(String str) => CondoModel.fromJson(json.decode(str));

String CondoModelToJson(CondoModel data) => json.encode(data.toJson());

class CondoModel {
  CondoModel({
    this.condos,
  });

  List<condo> condos;

  factory CondoModel.fromJson(Map<String, dynamic> json) => CondoModel(
    condos: List<condo>.from(json["condos"].map((x) => condo.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "condos": List<dynamic>.from(condos.map((x) => x.toJson())),
  };
}

class condo {
  condo({
    this.condoId,
    this.condoName,
    this.condoPrice,
    this.condoLocation,
    this.condoPhone,
    this.condoLimitedroom,
    this.condoFacilities,
    this.condoType,
    this.condoDetail,
    this.condoImage,
  });

  String condoId;
  String condoName;
  String condoPrice;
  String condoLocation;
  String condoPhone;
  String condoLimitedroom;
  String condoFacilities;
  String condoType;
  String condoDetail;
  String condoImage;

  factory condo.fromJson(Map<String, dynamic> json) => condo(
    condoId: json["condo_id"],
    condoName: json["condo_name"],
    condoPrice: json["condo_price"],
    condoLocation: json["condo_location"],
    condoPhone: json["condo_phone"],
    condoLimitedroom: json["condo_limitedroom"],
    condoFacilities: json["condo_facilities"],
    condoType: json["condo_type"],
    condoDetail: json["condo_detail"],
    condoImage: json["condo_image"],

  );

  Map<String, dynamic> toJson() => {
    "condo_id": condoId,
    "condo_name": condoName,
    "condo_price": condoPrice,
    "condo_location": condoLocation,
    "condo_phone": condoPhone,
    "condo_limitedroom": condoLimitedroom,
    "condo_facilities": condoFacilities,
    "condo_type": condoType,
    "condo_detail": condoDetail,
    "condo_image": condoImage,
  };
}
