// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherList _$$_WeatherListFromJson(Map<String, dynamic> json) =>
    _$_WeatherList(
      units: (json['list'] as List<dynamic>)
          .map((e) => WeatherUnit.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WeatherListToJson(_$_WeatherList instance) =>
    <String, dynamic>{
      'list': instance.units,
    };

_$_WeatherUnit _$$_WeatherUnitFromJson(Map<String, dynamic> json) =>
    _$_WeatherUnit(
      dt: json['dt'] as int?,
      mainInfo: json['main'] == null
          ? null
          : MainWeatherInfo.fromJson(json['main'] as Map<String, dynamic>),
      wind: json['wind'] == null
          ? null
          : Wind.fromJson(json['wind'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeatherUnitToJson(_$_WeatherUnit instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'main': instance.mainInfo,
      'wind': instance.wind,
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
