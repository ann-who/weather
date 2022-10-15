part of 'weather_bloc.dart';

/// Class for possible events on weather screens.
/// It's abstract so that in the future it will be possible to add events.

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object?> get props => [];
}

/// Event when city name was changed

class CityChanged extends WeatherEvent {
  final City city;

  const CityChanged(this.city);

  @override
  List<Object?> get props => [city];
}
