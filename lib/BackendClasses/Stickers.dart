
// To parse this JSON data, do
//
//     final stickers = stickersFromJson(jsonString);

import 'dart:convert';

Stickers stickersFromJson(String str) => Stickers.fromJson(json.decode(str));

String stickersToJson(Stickers data) => json.encode(data.toJson());

class Stickers {
  Stickers({
    this.id,
    this.userId,
    this.enabled,
    this.stickerName,
    this.imageUrl,
    this.stickerPackageId,
    this.userName,
  });

  int? id;
  int? userId;
  bool? enabled;
  String? stickerName;
  String? imageUrl;
  int? stickerPackageId;
  String? userName;

  factory Stickers.fromJson(Map<String, dynamic> json) => Stickers(
    id: json["id"],
    userId: json["userId"],
    enabled: json["enabled"],
    stickerName: json["stickerName"],
    imageUrl: json["imageUrl"],
    stickerPackageId: json["stickerPackageId"],
    userName: json["userName"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "userId": userId,
    "enabled": enabled,
    "stickerName": stickerName,
    "imageUrl": imageUrl,
    "stickerPackageId": stickerPackageId,
    "userName": userName,
  };
}
