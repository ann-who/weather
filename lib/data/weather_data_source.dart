import 'dart:io';

import 'package:dio/dio.dart';
import 'package:weather/models/city/city_model.dart';
import 'package:weather/models/weather/weather_model.dart';
import 'package:weather/utils/app_constants.dart';

/// Class to work with API
class WeatherDataSource {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: AppApi.baseUrl,
      connectTimeout: AppApi.connectTimeout,
      receiveTimeout: AppApi.receiveTimeout,
    ),
  );

  /// Send request to get cities list with their coordinates
  Future<List<City>> getCitiesName(String partialName) async {
    Response response;
    try {
      response = await _dio.get('/geo/1.0/direct', queryParameters: {
        'q': partialName,
        'appid': AppApi.myApiKey,
      });
    } on DioError catch (e) {
      if (e.response == null) {
        rethrow;
      }

      if (e.response!.statusCode == HttpStatus.notFound) {
        throw const HttpException(AppText.notFoundError);
      } else if (e.response!.statusCode != HttpStatus.ok) {
        throw const HttpException(AppText.unknownError);
      }

      rethrow;
    }

    var result = response.data;
    return (result as List).map((cityJson) => City.fromJson(cityJson)).toList();
  }

  /// Send request to get weather based on city coordinates
  Future<WeatherList> getWeather(City city) async {
    Response response;
    try {
      response = await _dio.get('/data/2.5/forecast', queryParameters: {
        'lat': city.lat,
        'lon': city.lon,
        'appid': AppApi.myApiKey,
        'units': 'metric',
        'lang': 'ru',
      });
    } on DioError catch (e) {
      if (e.response == null) {
        rethrow;
      }

      if (e.response!.statusCode == HttpStatus.notFound) {
        throw const HttpException(AppText.notFoundError);
      } else if (e.response!.statusCode != HttpStatus.ok) {
        throw const HttpException(AppText.unknownError);
      }

      rethrow;
    }

    var result = response.data;
    return WeatherList.fromJson(result);
  }
}
