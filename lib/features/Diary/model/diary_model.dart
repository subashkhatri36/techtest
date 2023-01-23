// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class DiaryModel {
  final List<String>? imageList;
  final String? comment;
  final String? date;
  final String? area;
  final String? category;
  final String? tags;
  final String? eventLink;
  final bool? includePhotoGallery;
  final bool? linkExistingEvent;
  DiaryModel({
    this.imageList,
    this.comment,
    this.date,
    this.area,
    this.category,
    this.tags,
    this.eventLink,
    this.includePhotoGallery,
    this.linkExistingEvent,
  });

  DiaryModel copyWith({
    List<String>? imageList,
    String? comment,
    String? date,
    String? area,
    String? category,
    String? tags,
    String? eventLink,
    bool? includePhotoGallery,
    bool? linkExistingEvent,
  }) {
    return DiaryModel(
      imageList: imageList ?? this.imageList,
      comment: comment ?? this.comment,
      date: date ?? this.date,
      area: area ?? this.area,
      category: category ?? this.category,
      tags: tags ?? this.tags,
      eventLink: eventLink ?? this.eventLink,
      includePhotoGallery: includePhotoGallery ?? this.includePhotoGallery,
      linkExistingEvent: linkExistingEvent ?? this.linkExistingEvent,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageList': imageList,
      'comment': comment,
      'date': date,
      'area': area,
      'category': category,
      'tags': tags,
      'eventLink': eventLink,
      'includePhotoGallery': includePhotoGallery,
      'linkExistingEvent': linkExistingEvent,
    };
  }

  factory DiaryModel.fromMap(Map<String, dynamic> map) {
    return DiaryModel(
      imageList: List<String>.from((map['imageList'] as List<String>)),
      comment: map['comment'] != null ? map['comment'] as String : null,
      date: map['date'] != null ? map['date'] as String : null,
      area: map['area'] != null ? map['area'] as String : null,
      category: map['category'] != null ? map['category'] as String : null,
      tags: map['tags'] != null ? map['tags'] as String : null,
      eventLink: map['eventLink'] != null ? map['eventLink'] as String : null,
      includePhotoGallery: map['includePhotoGallery'] != null
          ? map['includePhotoGallery'] as bool
          : null,
      linkExistingEvent: map['linkExistingEvent'] != null
          ? map['linkExistingEvent'] as bool
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory DiaryModel.fromJson(String source) =>
      DiaryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DiaryModel(imageList: $imageList, comment: $comment, date: $date, area: $area, category: $category, tags: $tags, eventLink: $eventLink, includePhotoGallery: $includePhotoGallery, linkExistingEvent: $linkExistingEvent)';
  }

  @override
  bool operator ==(covariant DiaryModel other) {
    if (identical(this, other)) return true;

    return listEquals(other.imageList, imageList) &&
        other.comment == comment &&
        other.date == date &&
        other.area == area &&
        other.category == category &&
        other.tags == tags &&
        other.eventLink == eventLink &&
        other.includePhotoGallery == includePhotoGallery &&
        other.linkExistingEvent == linkExistingEvent;
  }

  @override
  int get hashCode {
    return imageList.hashCode ^
        comment.hashCode ^
        date.hashCode ^
        area.hashCode ^
        category.hashCode ^
        tags.hashCode ^
        eventLink.hashCode ^
        includePhotoGallery.hashCode ^
        linkExistingEvent.hashCode;
  }
}
