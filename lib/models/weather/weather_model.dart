// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

/// City model generated with freezed
@freezed
class WeatherList with _$WeatherList {
  const factory WeatherList({
    @JsonKey(name: 'list') required List<WeatherUnit> units,
  }) = _WeatherList;

  factory WeatherList.fromJson(Map<String, Object?> json) =>
      _$WeatherListFromJson(json);
}

@freezed
class WeatherUnit with _$WeatherUnit {
  const WeatherUnit._();
  const factory WeatherUnit({
    int? dt,
    @JsonKey(name: 'main') MainWeatherInfo? mainInfo,
    Wind? wind,
  }) = _WeatherUnit;

  // Convert date to a readable format
  DateTime get dateTime => DateTime.fromMillisecondsSinceEpoch(dt! * 1000);

  factory WeatherUnit.fromJson(Map<String, Object?> json) =>
      _$WeatherUnitFromJson(json);
}

@freezed
class MainWeatherInfo with _$MainWeatherInfo {
  const factory MainWeatherInfo({
    double? temp,
    int? humidity,
  }) = _MainWeatherInfo;

  factory MainWeatherInfo.fromJson(Map<String, Object?> json) =>
      _$MainWeatherInfoFromJson(json);
}

@freezed
class Wind with _$Wind {
  const factory Wind({
    double? speed,
  }) = _Wind;

  factory Wind.fromJson(Map<String, Object?> json) => _$WindFromJson(json);
}
