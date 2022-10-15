import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/business_logic/city_search/bloc_for_city_search.dart';
import 'package:weather/business_logic/weather_screens/bloc_for_weather.dart';
import 'package:weather/data/weather_data_source.dart';
import 'package:weather/models/city/city_model.dart';
import 'package:weather/models/weather/weather_model.dart';
import 'package:weather/presentation/detailed_weather_screen.dart';

import 'package:weather/presentation/search_screen.dart';
import 'package:weather/presentation/today_weather_screen.dart';
import 'package:weather/utils/app_theme.dart';

void main() => runApp(const MyApp());

/// Class that contains the app.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => WeatherDataSource(),
      child: MaterialApp(
        theme: AppTheme.theme(),
        home: BlocProvider(
          create: (context) => CitySearchBloc(
            weatherDataSource:
                RepositoryProvider.of<WeatherDataSource>(context),
          ),
          child: const SearchScreen(),
        ),
        onGenerateRoute: (settings) {
          if (settings.name == TodayWeatherScreen.routeName) {
            final city = settings.arguments as City;
            return MaterialPageRoute(
              builder: (context) {
                return BlocProvider(
                  create: (context) => WeatherBloc(
                    weatherDataSource:
                        RepositoryProvider.of<WeatherDataSource>(context),
                  )..add(CityChanged(city)),
                  child: TodayWeatherScreen(city: city),
                );
              },
            );
          }
          if (settings.name == DetailedWeatherScreen.routeName) {
            var args = settings.arguments! as List;
            final cityName = args[0] as String;
            final weather = args[1] as List<WeatherUnit>;

            return MaterialPageRoute(
              builder: (context) {
                return DetailedWeatherScreen(
                  cityName: cityName,
                  weather: weather,
                );
              },
            );
          }

          assert(false, 'Need to implement ${settings.name}');
          return null;
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
