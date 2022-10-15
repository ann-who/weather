import 'package:flutter/material.dart';

import 'package:weather/models/weather/weather_model.dart';
import 'package:weather/utils/app_constants.dart';

/// Class with waether values.
/// Extract this widget to avoid code repetition and increase code readability.

class WeatherValues extends StatelessWidget {
  final WeatherUnit weather;

  const WeatherValues({
    Key? key,
    required this.weather,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${weather.mainInfo!.temp} ${AppText.celsius}',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const SizedBox(
          height: AppWidgetsSetting.verticalSmallPadding,
        ),
        Text(
          '${weather.mainInfo!.humidity} %',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const SizedBox(
          height: AppWidgetsSetting.verticalSmallPadding,
        ),
        Text(
          '${weather.wind!.speed} ${AppText.metersPerSecond}',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}
