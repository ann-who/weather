import 'package:flutter/material.dart';
import 'package:weather/presentation/widgets/background.dart';
import 'package:weather/utils/app_constants.dart';

class TodayWeatherScreen extends StatelessWidget {
  const TodayWeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/detailed');
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
        backgroundColor: AppColors.appBarBackground,
      ),
      body: Stack(
        children: [
          const ScreenBackground(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppWidgetsSetting.horisontalMediumPadding,
              vertical: AppWidgetsSetting.verticalMediumPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TODO get city name
                Text(
                  'Город',
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  height: AppWidgetsSetting.verticalMediumPadding,
                ),
                Text(
                  AppText.weatherToday,
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
                  children: const [
                    WeatherCharacteristics(),
                    // TODO get values
                    WeatherValues(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Extract widgets to increase the code readability

class WeatherValues extends StatelessWidget {
  const WeatherValues({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '15',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const SizedBox(
          height: AppWidgetsSetting.verticalSmallPadding,
        ),
        Text(
          '85%',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const SizedBox(
          height: AppWidgetsSetting.verticalSmallPadding,
        ),
        Text(
          '1 км/ч',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}

class WeatherCharacteristics extends StatelessWidget {
  const WeatherCharacteristics({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppText.temperature,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const SizedBox(
          height: AppWidgetsSetting.verticalSmallPadding,
        ),
        Text(
          AppText.humidity,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const SizedBox(
          height: AppWidgetsSetting.verticalSmallPadding,
        ),
        Text(
          AppText.windVelocity,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}
