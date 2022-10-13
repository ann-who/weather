// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
@JsonSerializable(explicitToJson: true)
class Weather with _$Weather {
  const factory Weather({
    String? cod,
    List<WeatherList>? list,
    City? city,
  }) = _Weather;

  factory Weather.fromJson(Map<String, Object?> json) =>
      _$WeatherFromJson(json);
}

@freezed
@JsonSerializable(explicitToJson: true)
class WeatherList with _$WeatherList {
  const factory WeatherList({
    int? dt,
    MainWeatherInfo? mainInfo,
    Wind? wind,
  }) = _WeatherList;

  factory WeatherList.fromJson(Map<String, Object?> json) =>
      _$WeatherListFromJson(json);
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

@freezed
class City with _$City {
  const factory City({
    String? name,
  }) = _City;

  factory City.fromJson(Map<String, Object?> json) => _$CityFromJson(json);
}
