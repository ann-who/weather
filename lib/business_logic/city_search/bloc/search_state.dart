part of 'search_bloc.dart';

/// Possible state representation via enum
enum CitySearchLoadingState {
  loading,
  loaded,
}

/// State description
class CitySearchState extends Equatable {
  final List<City> citiesList;
  final String partialName;
  final CitySearchLoadingState loadingState;

  const CitySearchState({
    this.citiesList = const [],
    this.partialName = '',
    this.loadingState = CitySearchLoadingState.loaded,
  });

  CitySearchState copyWith({
    List<City>? citiesList,
    String? partialName,
    CitySearchLoadingState? loadingState,
  }) {
    return CitySearchState(
      citiesList: citiesList ?? this.citiesList,
      partialName: partialName ?? this.partialName,
      loadingState: loadingState ?? this.loadingState,
    );
  }

  /// Now we get the first city in recieved list
  /// TODO add feature with combobox to show multiply cities based on partial name
  /// and autocomplete user's input
  City? get selectedCity {
    if (citiesList.isEmpty) {
      return null;
    }
    return citiesList[0];
  }

  /// Check if it's loading or not
  bool get isLoading => loadingState == CitySearchLoadingState.loading;

  /// Check if all conditions are true so we are able to send weather request
  bool get canFetchWeather =>
      partialName.length >= AppWidgetsSetting.minCharacters &&
      loadingState != CitySearchLoadingState.loading &&
      citiesList.isNotEmpty;

  @override
  List<Object?> get props => [
        citiesList,
        partialName,
        loadingState,
      ];
}
