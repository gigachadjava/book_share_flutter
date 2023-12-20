// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Book _$BookFromJson(Map<String, dynamic> json) => Book(
      id: json['id'] as int,
      nameBook: json['nameBook'] as String,
      author: json['authorBook'] as String,
      imageBook: json['imageUrl'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$BookToJson(Book instance) => <String, dynamic>{
      'id': instance.id,
      'nameBook': instance.nameBook,
      'authorBook': instance.author,
      'imageUrl': instance.imageBook,
      'description': instance.description,
    };
