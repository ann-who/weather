part of 'search_bloc.dart';

/// Class for possible events on search screen.
/// It's abstract so that in the future it will be possible to add events.

abstract class CitySearchEvent extends Equatable {
  const CitySearchEvent();

  @override
  List<Object?> get props => [];
}

/// Event when city name or its part were changed

class CityNameChanged extends CitySearchEvent {
  final String partialName;

  const CityNameChanged(this.partialName);

  @override
  List<Object?> get props => [partialName];
}
