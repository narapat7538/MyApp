// To parse this JSON data, do
//
//     final dormitoryModel = dormitoryModelFromJson(jsonString);

import 'dart:convert';

DormitoryModel dormitoryModelFromJson(String str) => DormitoryModel.fromJson(json.decode(str));

String dormitoryModelToJson(DormitoryModel data) => json.encode(data.toJson());

class DormitoryModel {
  DormitoryModel({
    this.dormitorys,
  });

  List<Dormitory> dormitorys;

  factory DormitoryModel.fromJson(Map<String, dynamic> json) => DormitoryModel(
    dormitorys: List<Dormitory>.from(json["dormitorys"].map((x) => Dormitory.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "dormitorys": List<dynamic>.from(dormitorys.map((x) => x.toJson())),
  };
}

class Dormitory {
  Dormitory({
    this.dormitoryId,
    this.dormitoryName,
    this.dormitoryPrice,
    this.dormitoryLocation,
    this.dormitoryPhone,
    this.dormitoryLimitedroom,
    this.dormitoryFacilities,
    this.dormitoryType,
    this.dormitoryDetail,
    this.dormitoryImage,
  });

  String dormitoryId;
  String dormitoryName;
  String dormitoryPrice;
  String dormitoryLocation;
  String dormitoryPhone;
  String dormitoryLimitedroom;
  String dormitoryFacilities;
  String dormitoryType;
  String dormitoryDetail;
  String dormitoryImage;

  factory Dormitory.fromJson(Map<String, dynamic> json) => Dormitory(
    dormitoryId: json["dormitory_id"],
    dormitoryName: json["dormitory_name"],
    dormitoryPrice: json["dormitory_price"],
    dormitoryLocation: json["dormitory_location"],
    dormitoryPhone: json["dormitory_phone"],
    dormitoryLimitedroom: json["dormitory_limitedroom"],
    dormitoryFacilities: json["dormitory_facilities"],
    dormitoryType: json["dormitory_type"],
    dormitoryDetail: json["dormitory_detail"],
    dormitoryImage: json["dormitory_image"],
  );

  Map<String, dynamic> toJson() => {
    "dormitory_id": dormitoryId,
    "dormitory_name": dormitoryName,
    "dormitory_price": dormitoryPrice,
    "dormitory_location": dormitoryLocation,
    "dormitory_phone": dormitoryPhone,
    "dormitory_limitedroom": dormitoryLimitedroom,
    "dormitory_facilities": dormitoryFacilities,
    "dormitory_type": dormitoryType,
    "dormitory_detail": dormitoryDetail,
    "dormitory_image": dormitoryImage,
  };
}
