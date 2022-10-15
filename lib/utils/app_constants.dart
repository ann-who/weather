/// This file contains all constants values such as strings, numbers and colors.
/// This is done to avoid code repetition and possible typos, and also to make life easier for ourselfs
/// in the future: if we need to change these values, we don't have to change them manually in each file,
/// one change here will be enough.

import 'package:flutter/material.dart';

class AppImages {
  // Better to use SVG format but I didn't find free & beautiful SVG picture :(
  static const String backgroundImage = 'assets/background_city.png';
  static const String temperature = 'assets/temperature.png';
  static const String humidity = 'assets/humidity.png';
  static const String wind = 'assets/wind.png';
}

class AppText {
  static const String weatherIn = 'Погода в ...';
  static const String confirm = 'Подтвердить';
  static const String enterName = 'Введите название города';
  static const String weatherToday = 'Погода сегодня:';
  static const String temperature = 'Температура';
  static const String humidity = 'Влажность';
  static const String windVelocity = 'Скорость ветра';
  static const String notFoundError = 'Погода в выбранном городе не найдена';
  static const String unknownError =
      'Что-то пошло не так... Попробуйте позже ещё раз';
  static const String dataError = 'Ошибка получения данных';
  static const String toSearching = 'К поиску';
  static const String celsius = '°C';
  static const String metersPerSecond = 'м/с';
}

class AppWidgetsSetting {
  static const double horisontalLargePadding = 42.0;
  static const double horisontalMediumPadding = 20.0;
  static const double horisontalSmallPadding = 10.0;
  static const double verticalLargePadding = 90.0;
  static const double verticalMediumPadding = 26.0;
  static const double verticalSmallPadding = 26.0;

  static const double headlineText = 32.0;
  static const double regularText = 20.0;
  static const double buttonText = 16.0;

  static const double borderRadius = 28.0;
  static const double buttonHeight = 50.0;
  static const double dividerThickness = 1.0;
  static const double imageOpacity = 0.8;
  static const int itemsInList = 3;
  static const int minCharacters = 3;
}

class AppColors {
  static const Color appBarBackground = Color(0xFF2d7d90);
  static const Color elements = Color(0xFF22577A);
  static const Color disableElements = Color(0xFFadb5bd);
}

class AppApi {
  static const String baseUrl = 'http://api.openweathermap.org';
  static const int connectTimeout = 5000;
  static const int receiveTimeout = 3000;

  // I know it's veeery bad and it's better to use GitHub secrets/Shared Preferences/etc but I run out of time :(
  // TODO! DO NOT COMMIT
  static const String myApiKey = 'e27f2e6dd7130fc5dacf6ed2f858704e';
}
