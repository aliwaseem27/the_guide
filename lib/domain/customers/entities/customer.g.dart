// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerImpl _$$CustomerImplFromJson(Map<String, dynamic> json) =>
    _$CustomerImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      notes: json['notes'] as String,
      dateAdded: DateTime.parse(json['dateAdded'] as String),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      locationCoordinates: LocationCoordinates.fromJson(
          json['locationCoordinates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CustomerImplToJson(_$CustomerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'notes': instance.notes,
      'dateAdded': instance.dateAdded.toIso8601String(),
      'tags': instance.tags,
      'locationCoordinates': instance.locationCoordinates,
    };
