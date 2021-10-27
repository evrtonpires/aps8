// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return DataModel(
    title: json['title'] as String?,
    description: json['description'] as String?,
    urlVideo: json['urlVideo'] as String?,
  );
}

Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'urlVideo': instance.urlVideo,
    };
