import 'package:json_annotation/json_annotation.dart';

part 'data_model.g.dart';

@JsonSerializable()
class DataModel {
  late String? title;
  late String? description;
  late String? urlVideo;

  DataModel({
    required this.title,
    required this.description,
    required this.urlVideo,
  });

  DataModel.padrao();

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);

  Map<String, dynamic> toJson() => _$DataModelToJson(this);
}
