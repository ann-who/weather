part of 'weather_bloc.dart';

/// Possible state representation via enum
enum WeatherLoadingState {
  notInitialized,
  loading,
  loaded,
  failure,
}

/// State description
class WeatherState extends Equatable {
  final City city;
  final WeatherList weatherList;
  final WeatherLoadingState loadingState;

  const WeatherState({
    this.city = const City(),
    this.weatherList = const WeatherList(units: []),
    this.loadingState = WeatherLoadingState.notInitialized,
  });

  WeatherState copyWith({
    final City? city,
    final WeatherList? weatherList,
    final WeatherLoadingState? loadingState,
  }) {
    return WeatherState(
      city: city ?? this.city,
      weatherList: weatherList ?? this.weatherList,
      loadingState: loadingState ?? this.loadingState,
    );
  }

  /// Check if it's loading or not
  bool get isLoading => loadingState == WeatherLoadingState.loading;

  /// Get the newest weather depending on time
  WeatherUnit get weatherNow => weatherList.units[0];

  /// Get weather list for three days based on the newest weather
  /// so we can compare different days but at the same time
  List<WeatherUnit> get weatherForNextThreeDays {
    var currentDateTime =
        DateTime.fromMillisecondsSinceEpoch(weatherNow.dt! * 1000);

    // Create a list for next 3 days
    List<WeatherUnit> weatherAtThisTime = [];
    for (var unit in weatherList.units) {
      var dateTime = DateTime.fromMillisecondsSinceEpoch(unit.dt! * 1000);
      if (dateTime.difference(currentDateTime).inDays ==
          AppWidgetsSetting.itemsInList) {
        break;
      }
      if (dateTime.hour == currentDateTime.hour) {
        weatherAtThisTime.add(unit);
      }
    }

    // Find the lowest temperature and move it to first
    int lowestTempIndex = 0;
    for (int i = 0; i < weatherAtThisTime.length; ++i) {
      if (weatherAtThisTime[i].mainInfo!.temp! <
          weatherAtThisTime[lowestTempIndex].mainInfo!.temp!) {
        lowestTempIndex = i;
      }
    }

    // Sort units
    var lowestTempUnit = weatherAtThisTime[lowestTempIndex];
    weatherAtThisTime.removeAt(lowestTempIndex);
    weatherAtThisTime.insert(0, lowestTempUnit);

    return weatherAtThisTime;
  }

  @override
  List<Object?> get props => [
        city,
        weatherList,
        loadingState,
      ];
}
