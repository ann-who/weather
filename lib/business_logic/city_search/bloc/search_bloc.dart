import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

import 'package:weather/data/weather_data_source.dart';
import 'package:weather/models/city/city_model.dart';
import 'package:weather/utils/app_constants.dart';

part 'search_event.dart';
part 'search_state.dart';

/// Bloc for working with city search logic

class CitySearchBloc extends Bloc<CitySearchEvent, CitySearchState> {
  WeatherDataSource weatherDataSource;
  CitySearchBloc({
    required this.weatherDataSource,
  }) : super(
          const CitySearchState(
            citiesList: [],
            partialName: '',
          ),
        ) {
    on<CityNameChanged>(
      _onCityNameChanged,
      transformer: sequential(),
    );
  }

  /// Event handler when user changes city name or its part.
  /// We emit multiply states in response to the incoming event.

  void _onCityNameChanged(
    CityNameChanged event,
    Emitter<CitySearchState> emit,
  ) async {
    List<City> citiesList = [];

    /// Loading state and city request are allowed only if user input contains
    /// characters minimal number.
    if (event.partialName.length >= AppWidgetsSetting.minCharacters) {
      emit(
        state.copyWith(
          partialName: event.partialName,
          citiesList: [],
          loadingState: CitySearchLoadingState.loading,
        ),
      );
      citiesList = await weatherDataSource.getCitiesName(event.partialName);
    }

    /// If request was allowed, we emit new state with recieved city
    emit(
      state.copyWith(
        partialName: event.partialName,
        citiesList: citiesList,
        loadingState: CitySearchLoadingState.loaded,
      ),
    );
  }
}
