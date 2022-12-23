// To parse this JSON data, do
//
//     final stickerPackages = stickerPackagesFromJson(jsonString);

import 'dart:convert';

StickerPackages stickerPackagesFromJson(String str) => StickerPackages.fromJson(json.decode(str));

String stickerPackagesToJson(StickerPackages data) => json.encode(data.toJson());

class StickerPackages {
  StickerPackages({
    this.id,
    this.userId,
    this.enabled,
    this.name,
    this.imageUrl,
  });

  int? id;
  int? userId;
  bool? enabled;
  String? name;
  String? imageUrl;

  factory StickerPackages.fromJson(Map<String, dynamic> json) => StickerPackages(
    id: json["id"],
    userId: json["userId"],
    enabled: json["enabled"],
    name: json["name"],
    imageUrl: json["imageUrl"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "userId": userId,
    "enabled": enabled,
    "name": name,
    "imageUrl": imageUrl,
  };
}
