import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weather/business_logic/weather_screens/bloc_for_weather.dart';
import 'package:weather/models/city/city_model.dart';
import 'package:weather/presentation/widgets/background.dart';
import 'package:weather/presentation/widgets/weather_values.dart';
import 'package:weather/utils/app_constants.dart';

/// Screen to show current weather (the latest in a day) in a choosen city
class TodayWeatherScreen extends StatelessWidget {
  final City city;

  const TodayWeatherScreen({
    Key? key,
    required this.city,
  }) : super(key: key);

  static const routeName = '/today';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/detailed',
                arguments: [
                  city.name,
                  context.read<WeatherBloc>().state.weatherForNextThreeDays,
                ],
              );
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
        backgroundColor: AppColors.appBarBackground,
      ),
      body: Stack(
        children: const [
          ScreenBackground(),
          TodayWeatherPage(),
        ],
      ),
    );
  }
}

/// Screen content
class TodayWeatherPage extends StatelessWidget {
  const TodayWeatherPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<WeatherBloc, WeatherState>(
      listenWhen: (previous, current) =>
          previous.loadingState != current.loadingState,
      listener: (context, state) {
        if (state.loadingState == WeatherLoadingState.failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text(AppText.dataError),
              action: SnackBarAction(
                label: AppText.toSearching,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          );
        }
      },
      child: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          if ([WeatherLoadingState.notInitialized, WeatherLoadingState.loading]
              .contains(state.loadingState)) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.loadingState == WeatherLoadingState.failure) {
            return Center(
              child: Text(
                AppText.dataError,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            );
          }

          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppWidgetsSetting.horisontalMediumPadding,
              vertical: AppWidgetsSetting.verticalMediumPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.watch<WeatherBloc>().state.city.name!,
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
                  children: [
                    const WeatherCharacteristics(),
                    BlocBuilder<WeatherBloc, WeatherState>(
                      builder: (context, state) {
                        return WeatherValues(
                          weather: state.weatherNow,
                        );
                      },
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

/// Extract widgets to increase the code readability

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
