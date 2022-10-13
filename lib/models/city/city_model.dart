// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart';

@freezed
class City with _$City {
  @JsonSerializable(explicitToJson: true)
  const factory City({
    String? name,
    @JsonKey(name: 'local_names') Set? localNames,
    double? lat,
    double? lon,
    String? country,
    String? state,
  }) = _City;

  factory City.fromJson(Map<String, Object?> json) => _$CityFromJson(json);
}
