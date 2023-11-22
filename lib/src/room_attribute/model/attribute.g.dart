// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttributeModel _$AttributeModelFromJson(Map<String, dynamic> json) =>
    AttributeModel(
      id: json['id'] as int?,
      nameEN: AttributeModel._trim(json['name_en'] as String?),
      nameTH: AttributeModel._trim(json['name_th'] as String?),
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$AttributeModelToJson(AttributeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_en': instance.nameEN,
      'name_th': instance.nameTH,
      'active': instance.active,
    };
