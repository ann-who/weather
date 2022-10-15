import 'package:flutter/material.dart';
import 'package:weather/models/weather/weather_model.dart';
import 'package:weather/presentation/today_weather_screen.dart';
import 'package:weather/presentation/widgets/weather_values.dart';
import 'package:weather/utils/app_constants.dart';

/// Screen to show weather for three days in a choosen city
class DetailedWeatherScreen extends StatelessWidget {
  final String cityName;
  final List<WeatherUnit> weather;

  const DetailedWeatherScreen({
    Key? key,
    required this.cityName,
    required this.weather,
  }) : super(key: key);

  static const routeName = '/detailed';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppWidgetsSetting.horisontalMediumPadding,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: AppWidgetsSetting.verticalMediumPadding,
              ),
              Text(
                cityName,
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: AppWidgetsSetting.verticalMediumPadding,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: weather.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // I know it's better to use intl package with its DateFormat
                      // but I thought a package for just one line would be too much :)
                      Text(
                        '${weather[index].dateTime.day}.${weather[index].dateTime.month}.${weather[index].dateTime.year}',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: AppWidgetsSetting.verticalSmallPadding,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const WeatherCharacteristics(),
                          WeatherValues(
                            weather: weather[index],
                          ),
                        ],
                      )
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
