import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:weather/models/weather/weather_model.dart';
import 'package:weather/utils/app_constants.dart';

class WeatherDataSource {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: AppApi.baseUrl,
      connectTimeout: AppApi.connectTimeout,
      receiveTimeout: AppApi.receiveTimeout,
    ),
  );

  Future getCityName() async {
    Response response;
    try {
      response = await _dio.get('/geo/1.0/', queryParameters: {
        'q': '',
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
    return Weather.fromJson(json.decode(result));
  }

  Future<Weather> getWeather(String cityName) async {
    Response response;
    try {
      response = await _dio.get('/data/2.5/forecast', queryParameters: {
        'lat': '44.34',
        'lon': '10.99',
        'appid': AppApi.myApiKey,
        'units': 'metric'
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
    return Weather.fromJson(json.decode(result));

    // var result = json.decode(response.data);
    // var weatherFullInfo =
    //     (result.map<Weather>((weather) => Weather.fromJson(weather))).toList();
    // return weatherFullInfo;

    //  Map<String, dynamic> result = json.decode(response.data);
    // List<Weather> weatherFullInfo = result[''];
    // return weatherFullInfo;
  }
}
