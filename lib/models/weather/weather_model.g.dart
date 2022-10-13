// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Weather _$$_WeatherFromJson(Map<String, dynamic> json) => _$_Weather(
      cod: json['cod'] as String?,
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => WeatherList.fromJson(e as Map<String, dynamic>))
          .toList(),
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeatherToJson(_$_Weather instance) =>
    <String, dynamic>{
      'cod': instance.cod,
      'list': instance.list?.map((e) => e.toJson()).toList(),
      'city': instance.city?.toJson(),
    };

_$_WeatherList _$$_WeatherListFromJson(Map<String, dynamic> json) =>
    _$_WeatherList(
      dt: json['dt'] as int?,
      mainInfo: json['mainInfo'] == null
          ? null
          : MainWeatherInfo.fromJson(json['mainInfo'] as Map<String, dynamic>),
      wind: json['wind'] == null
          ? null
          : Wind.fromJson(json['wind'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeatherListToJson(_$_WeatherList instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'mainInfo': instance.mainInfo?.toJson(),
      'wind': instance.wind?.toJson(),
    };

_$_MainWeatherInfo _$$_MainWeatherInfoFromJson(Map<String, dynamic> json) =>
    _$_MainWeatherInfo(
      temp: (json['temp'] as num?)?.toDouble(),
      humidity: json['humidity'] as int?,
    );

Map<String, dynamic> _$$_MainWeatherInfoToJson(_$_MainWeatherInfo instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'humidity': instance.humidity,
    };

_$_Wind _$$_WindFromJson(Map<String, dynamic> json) => _$_Wind(
      speed: (json['speed'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_WindToJson(_$_Wind instance) => <String, dynamic>{
      'speed': instance.speed,
    };

_$_City _$$_CityFromJson(Map<String, dynamic> json) => _$_City(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_CityToJson(_$_City instance) => <String, dynamic>{
      'name': instance.name,
    };
