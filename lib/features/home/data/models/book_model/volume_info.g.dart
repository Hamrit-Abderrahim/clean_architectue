// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volume_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VolumeInfo _$VolumeInfoFromJson(Map<String, dynamic> json) => VolumeInfo(
  title: json['title'] as String?,
  authors: (json['authors'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  publishedDate: json['publishedDate'] as String?,
  readingModes: json['readingModes'] == null
      ? null
      : ReadingModes.fromJson(json['readingModes'] as Map<String, dynamic>),
  pageCount: (json['pageCount'] as num?)?.toInt(),
  printType: json['printType'] as String?,
  categories: (json['categories'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  maturityRating: json['maturityRating'] as String?,
  allowAnonLogging: json['allowAnonLogging'] as bool?,
  contentVersion: json['contentVersion'] as String?,
  imageLinks: json['imageLinks'] == null
      ? null
      : ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
  language: json['language'] as String?,
  previewLink: json['previewLink'] as String?,
  infoLink: json['infoLink'] as String?,
  canonicalVolumeLink: json['canonicalVolumeLink'] as String?,
);
