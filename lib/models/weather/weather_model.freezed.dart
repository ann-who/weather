// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  String? get cod => throw _privateConstructorUsedError;
  List<WeatherList>? get list => throw _privateConstructorUsedError;
  City? get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res>;
  $Res call({String? cod, List<WeatherList>? list, City? city});

  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res> implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  final Weather _value;
  // ignore: unused_field
  final $Res Function(Weather) _then;

  @override
  $Res call({
    Object? cod = freezed,
    Object? list = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      cod: cod == freezed
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String?,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<WeatherList>?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
    ));
  }

  @override
  $CityCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value));
    });
  }
}

/// @nodoc
abstract class _$$_WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$_WeatherCopyWith(
          _$_Weather value, $Res Function(_$_Weather) then) =
      __$$_WeatherCopyWithImpl<$Res>;
  @override
  $Res call({String? cod, List<WeatherList>? list, City? city});

  @override
  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class __$$_WeatherCopyWithImpl<$Res> extends _$WeatherCopyWithImpl<$Res>
    implements _$$_WeatherCopyWith<$Res> {
  __$$_WeatherCopyWithImpl(_$_Weather _value, $Res Function(_$_Weather) _then)
      : super(_value, (v) => _then(v as _$_Weather));

  @override
  _$_Weather get _value => super._value as _$_Weather;

  @override
  $Res call({
    Object? cod = freezed,
    Object? list = freezed,
    Object? city = freezed,
  }) {
    return _then(_$_Weather(
      cod: cod == freezed
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String?,
      list: list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<WeatherList>?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Weather implements _Weather {
  const _$_Weather({this.cod, final List<WeatherList>? list, this.city})
      : _list = list;

  factory _$_Weather.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherFromJson(json);

  @override
  final String? cod;
  final List<WeatherList>? _list;
  @override
  List<WeatherList>? get list {
    final value = _list;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final City? city;

  @override
  String toString() {
    return 'Weather(cod: $cod, list: $list, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Weather &&
            const DeepCollectionEquality().equals(other.cod, cod) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            const DeepCollectionEquality().equals(other.city, city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cod),
      const DeepCollectionEquality().hash(_list),
      const DeepCollectionEquality().hash(city));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      __$$_WeatherCopyWithImpl<_$_Weather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherToJson(
      this,
    );
  }
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {final String? cod,
      final List<WeatherList>? list,
      final City? city}) = _$_Weather;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$_Weather.fromJson;

  @override
  String? get cod;
  @override
  List<WeatherList>? get list;
  @override
  City? get city;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherList _$WeatherListFromJson(Map<String, dynamic> json) {
  return _WeatherList.fromJson(json);
}

/// @nodoc
mixin _$WeatherList {
  int? get dt => throw _privateConstructorUsedError;
  MainWeatherInfo? get mainInfo => throw _privateConstructorUsedError;
  Wind? get wind => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherListCopyWith<WeatherList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherListCopyWith<$Res> {
  factory $WeatherListCopyWith(
          WeatherList value, $Res Function(WeatherList) then) =
      _$WeatherListCopyWithImpl<$Res>;
  $Res call({int? dt, MainWeatherInfo? mainInfo, Wind? wind});

  $MainWeatherInfoCopyWith<$Res>? get mainInfo;
  $WindCopyWith<$Res>? get wind;
}

/// @nodoc
class _$WeatherListCopyWithImpl<$Res> implements $WeatherListCopyWith<$Res> {
  _$WeatherListCopyWithImpl(this._value, this._then);

  final WeatherList _value;
  // ignore: unused_field
  final $Res Function(WeatherList) _then;

  @override
  $Res call({
    Object? dt = freezed,
    Object? mainInfo = freezed,
    Object? wind = freezed,
  }) {
    return _then(_value.copyWith(
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      mainInfo: mainInfo == freezed
          ? _value.mainInfo
          : mainInfo // ignore: cast_nullable_to_non_nullable
              as MainWeatherInfo?,
      wind: wind == freezed
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind?,
    ));
  }

  @override
  $MainWeatherInfoCopyWith<$Res>? get mainInfo {
    if (_value.mainInfo == null) {
      return null;
    }

    return $MainWeatherInfoCopyWith<$Res>(_value.mainInfo!, (value) {
      return _then(_value.copyWith(mainInfo: value));
    });
  }

  @override
  $WindCopyWith<$Res>? get wind {
    if (_value.wind == null) {
      return null;
    }

    return $WindCopyWith<$Res>(_value.wind!, (value) {
      return _then(_value.copyWith(wind: value));
    });
  }
}

/// @nodoc
abstract class _$$_WeatherListCopyWith<$Res>
    implements $WeatherListCopyWith<$Res> {
  factory _$$_WeatherListCopyWith(
          _$_WeatherList value, $Res Function(_$_WeatherList) then) =
      __$$_WeatherListCopyWithImpl<$Res>;
  @override
  $Res call({int? dt, MainWeatherInfo? mainInfo, Wind? wind});

  @override
  $MainWeatherInfoCopyWith<$Res>? get mainInfo;
  @override
  $WindCopyWith<$Res>? get wind;
}

/// @nodoc
class __$$_WeatherListCopyWithImpl<$Res> extends _$WeatherListCopyWithImpl<$Res>
    implements _$$_WeatherListCopyWith<$Res> {
  __$$_WeatherListCopyWithImpl(
      _$_WeatherList _value, $Res Function(_$_WeatherList) _then)
      : super(_value, (v) => _then(v as _$_WeatherList));

  @override
  _$_WeatherList get _value => super._value as _$_WeatherList;

  @override
  $Res call({
    Object? dt = freezed,
    Object? mainInfo = freezed,
    Object? wind = freezed,
  }) {
    return _then(_$_WeatherList(
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      mainInfo: mainInfo == freezed
          ? _value.mainInfo
          : mainInfo // ignore: cast_nullable_to_non_nullable
              as MainWeatherInfo?,
      wind: wind == freezed
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_WeatherList implements _WeatherList {
  const _$_WeatherList({this.dt, this.mainInfo, this.wind});

  factory _$_WeatherList.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherListFromJson(json);

  @override
  final int? dt;
  @override
  final MainWeatherInfo? mainInfo;
  @override
  final Wind? wind;

  @override
  String toString() {
    return 'WeatherList(dt: $dt, mainInfo: $mainInfo, wind: $wind)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherList &&
            const DeepCollectionEquality().equals(other.dt, dt) &&
            const DeepCollectionEquality().equals(other.mainInfo, mainInfo) &&
            const DeepCollectionEquality().equals(other.wind, wind));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dt),
      const DeepCollectionEquality().hash(mainInfo),
      const DeepCollectionEquality().hash(wind));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherListCopyWith<_$_WeatherList> get copyWith =>
      __$$_WeatherListCopyWithImpl<_$_WeatherList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherListToJson(
      this,
    );
  }
}

abstract class _WeatherList implements WeatherList {
  const factory _WeatherList(
      {final int? dt,
      final MainWeatherInfo? mainInfo,
      final Wind? wind}) = _$_WeatherList;

  factory _WeatherList.fromJson(Map<String, dynamic> json) =
      _$_WeatherList.fromJson;

  @override
  int? get dt;
  @override
  MainWeatherInfo? get mainInfo;
  @override
  Wind? get wind;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherListCopyWith<_$_WeatherList> get copyWith =>
      throw _privateConstructorUsedError;
}

MainWeatherInfo _$MainWeatherInfoFromJson(Map<String, dynamic> json) {
  return _MainWeatherInfo.fromJson(json);
}

/// @nodoc
mixin _$MainWeatherInfo {
  double? get temp => throw _privateConstructorUsedError;
  int? get humidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainWeatherInfoCopyWith<MainWeatherInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainWeatherInfoCopyWith<$Res> {
  factory $MainWeatherInfoCopyWith(
          MainWeatherInfo value, $Res Function(MainWeatherInfo) then) =
      _$MainWeatherInfoCopyWithImpl<$Res>;
  $Res call({double? temp, int? humidity});
}

/// @nodoc
class _$MainWeatherInfoCopyWithImpl<$Res>
    implements $MainWeatherInfoCopyWith<$Res> {
  _$MainWeatherInfoCopyWithImpl(this._value, this._then);

  final MainWeatherInfo _value;
  // ignore: unused_field
  final $Res Function(MainWeatherInfo) _then;

  @override
  $Res call({
    Object? temp = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_value.copyWith(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_MainWeatherInfoCopyWith<$Res>
    implements $MainWeatherInfoCopyWith<$Res> {
  factory _$$_MainWeatherInfoCopyWith(
          _$_MainWeatherInfo value, $Res Function(_$_MainWeatherInfo) then) =
      __$$_MainWeatherInfoCopyWithImpl<$Res>;
  @override
  $Res call({double? temp, int? humidity});
}

/// @nodoc
class __$$_MainWeatherInfoCopyWithImpl<$Res>
    extends _$MainWeatherInfoCopyWithImpl<$Res>
    implements _$$_MainWeatherInfoCopyWith<$Res> {
  __$$_MainWeatherInfoCopyWithImpl(
      _$_MainWeatherInfo _value, $Res Function(_$_MainWeatherInfo) _then)
      : super(_value, (v) => _then(v as _$_MainWeatherInfo));

  @override
  _$_MainWeatherInfo get _value => super._value as _$_MainWeatherInfo;

  @override
  $Res call({
    Object? temp = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_$_MainWeatherInfo(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainWeatherInfo implements _MainWeatherInfo {
  const _$_MainWeatherInfo({this.temp, this.humidity});

  factory _$_MainWeatherInfo.fromJson(Map<String, dynamic> json) =>
      _$$_MainWeatherInfoFromJson(json);

  @override
  final double? temp;
  @override
  final int? humidity;

  @override
  String toString() {
    return 'MainWeatherInfo(temp: $temp, humidity: $humidity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainWeatherInfo &&
            const DeepCollectionEquality().equals(other.temp, temp) &&
            const DeepCollectionEquality().equals(other.humidity, humidity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(temp),
      const DeepCollectionEquality().hash(humidity));

  @JsonKey(ignore: true)
  @override
  _$$_MainWeatherInfoCopyWith<_$_MainWeatherInfo> get copyWith =>
      __$$_MainWeatherInfoCopyWithImpl<_$_MainWeatherInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainWeatherInfoToJson(
      this,
    );
  }
}

abstract class _MainWeatherInfo implements MainWeatherInfo {
  const factory _MainWeatherInfo({final double? temp, final int? humidity}) =
      _$_MainWeatherInfo;

  factory _MainWeatherInfo.fromJson(Map<String, dynamic> json) =
      _$_MainWeatherInfo.fromJson;

  @override
  double? get temp;
  @override
  int? get humidity;
  @override
  @JsonKey(ignore: true)
  _$$_MainWeatherInfoCopyWith<_$_MainWeatherInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

Wind _$WindFromJson(Map<String, dynamic> json) {
  return _Wind.fromJson(json);
}

/// @nodoc
mixin _$Wind {
  double? get speed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WindCopyWith<Wind> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WindCopyWith<$Res> {
  factory $WindCopyWith(Wind value, $Res Function(Wind) then) =
      _$WindCopyWithImpl<$Res>;
  $Res call({double? speed});
}

/// @nodoc
class _$WindCopyWithImpl<$Res> implements $WindCopyWith<$Res> {
  _$WindCopyWithImpl(this._value, this._then);

  final Wind _value;
  // ignore: unused_field
  final $Res Function(Wind) _then;

  @override
  $Res call({
    Object? speed = freezed,
  }) {
    return _then(_value.copyWith(
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_WindCopyWith<$Res> implements $WindCopyWith<$Res> {
  factory _$$_WindCopyWith(_$_Wind value, $Res Function(_$_Wind) then) =
      __$$_WindCopyWithImpl<$Res>;
  @override
  $Res call({double? speed});
}

/// @nodoc
class __$$_WindCopyWithImpl<$Res> extends _$WindCopyWithImpl<$Res>
    implements _$$_WindCopyWith<$Res> {
  __$$_WindCopyWithImpl(_$_Wind _value, $Res Function(_$_Wind) _then)
      : super(_value, (v) => _then(v as _$_Wind));

  @override
  _$_Wind get _value => super._value as _$_Wind;

  @override
  $Res call({
    Object? speed = freezed,
  }) {
    return _then(_$_Wind(
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Wind implements _Wind {
  const _$_Wind({this.speed});

  factory _$_Wind.fromJson(Map<String, dynamic> json) => _$$_WindFromJson(json);

  @override
  final double? speed;

  @override
  String toString() {
    return 'Wind(speed: $speed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Wind &&
            const DeepCollectionEquality().equals(other.speed, speed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(speed));

  @JsonKey(ignore: true)
  @override
  _$$_WindCopyWith<_$_Wind> get copyWith =>
      __$$_WindCopyWithImpl<_$_Wind>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WindToJson(
      this,
    );
  }
}

abstract class _Wind implements Wind {
  const factory _Wind({final double? speed}) = _$_Wind;

  factory _Wind.fromJson(Map<String, dynamic> json) = _$_Wind.fromJson;

  @override
  double? get speed;
  @override
  @JsonKey(ignore: true)
  _$$_WindCopyWith<_$_Wind> get copyWith => throw _privateConstructorUsedError;
}

City _$CityFromJson(Map<String, dynamic> json) {
  return _City.fromJson(json);
}

/// @nodoc
mixin _$City {
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityCopyWith<City> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res>;
  $Res call({String? name});
}

/// @nodoc
class _$CityCopyWithImpl<$Res> implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._value, this._then);

  final City _value;
  // ignore: unused_field
  final $Res Function(City) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CityCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$$_CityCopyWith(_$_City value, $Res Function(_$_City) then) =
      __$$_CityCopyWithImpl<$Res>;
  @override
  $Res call({String? name});
}

/// @nodoc
class __$$_CityCopyWithImpl<$Res> extends _$CityCopyWithImpl<$Res>
    implements _$$_CityCopyWith<$Res> {
  __$$_CityCopyWithImpl(_$_City _value, $Res Function(_$_City) _then)
      : super(_value, (v) => _then(v as _$_City));

  @override
  _$_City get _value => super._value as _$_City;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_City(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_City implements _City {
  const _$_City({this.name});

  factory _$_City.fromJson(Map<String, dynamic> json) => _$$_CityFromJson(json);

  @override
  final String? name;

  @override
  String toString() {
    return 'City(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_City &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_CityCopyWith<_$_City> get copyWith =>
      __$$_CityCopyWithImpl<_$_City>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CityToJson(
      this,
    );
  }
}

abstract class _City implements City {
  const factory _City({final String? name}) = _$_City;

  factory _City.fromJson(Map<String, dynamic> json) = _$_City.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_CityCopyWith<_$_City> get copyWith => throw _privateConstructorUsedError;
}
