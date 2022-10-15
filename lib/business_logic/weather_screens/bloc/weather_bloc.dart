import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/data/weather_data_source.dart';
import 'package:weather/models/city/city_model.dart';

import 'package:weather/models/weather/weather_model.dart';
import 'package:weather/utils/app_constants.dart';

part 'weather_event.dart';
part 'weather_state.dart';

/// Bloc for working with weather logic

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherDataSource weatherDataSource;
  WeatherBloc({
    required this.weatherDataSource,
  }) : super(const WeatherState()) {
    on<CityChanged>(_onCityChanged);
  }

  /// Event handler when user changes city name.
  /// We emit multiply states in response to the incoming event.

  void _onCityChanged(
    CityChanged event,
    Emitter<WeatherState> emit,
  ) async {
    /// Accept city name and show loading state
    emit(
      state.copyWith(
        city: event.city,
        loadingState: WeatherLoadingState.loading,
      ),
    );

    /// Try to get weather data
    WeatherList weatherList;
    try {
      weatherList = await weatherDataSource.getWeather(event.city);
    } catch (e) {
      /// If data wasn't recieved, list is empty and state is failure
      emit(
        state.copyWith(
          weatherList: const WeatherList(units: []),
          loadingState: WeatherLoadingState.failure,
        ),
      );
      return;
    }

    /// If data was recieved, we get weather and the state is loaded
    emit(
      state.copyWith(
        weatherList: weatherList,
        loadingState: WeatherLoadingState.loaded,
      ),
    );
  }
}
