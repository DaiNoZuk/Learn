import 'package:json_annotation/json_annotation.dart';

part 'attribute.g.dart';

@JsonSerializable(explicitToJson: true)
class AttributeModel {
  int? id;
  @JsonKey(name: 'name_en',fromJson: _trim)
  String? nameEN;
  @JsonKey(name: 'name_th',fromJson: _trim)
  String? nameTH;
  bool? active;
  AttributeModel({
    this.id,
    this.nameEN,
    this.nameTH,
    this.active
  });

  AttributeModel copyWith({
    int? id,
    String? nameEN,
    String? nameTH,
    bool? active,
  }) =>
      AttributeModel(
        id: id ?? this.id,
        nameEN: nameEN ?? this.nameEN,
        nameTH: nameTH ?? this.nameTH,
        active: active ?? this.active,
      );

  factory AttributeModel.fromJson(Map<String, dynamic> json) =>
      _$AttributeModelFromJson(json);

  Map<String, dynamic> toJson() => _$AttributeModelToJson(this);

  static String? _trim(String? value) => value?.trim();
}