// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_coordinates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationCoordinatesImpl _$$LocationCoordinatesImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationCoordinatesImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$LocationCoordinatesImplToJson(
        _$LocationCoordinatesImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
