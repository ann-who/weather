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

WeatherList _$WeatherListFromJson(Map<String, dynamic> json) {
  return _WeatherList.fromJson(json);
}

/// @nodoc
mixin _$WeatherList {
  @JsonKey(name: 'list')
  List<WeatherUnit> get units => throw _privateConstructorUsedError;

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
  $Res call({@JsonKey(name: 'list') List<WeatherUnit> units});
}

/// @nodoc
class _$WeatherListCopyWithImpl<$Res> implements $WeatherListCopyWith<$Res> {
  _$WeatherListCopyWithImpl(this._value, this._then);

  final WeatherList _value;
  // ignore: unused_field
  final $Res Function(WeatherList) _then;

  @override
  $Res call({
    Object? units = freezed,
  }) {
    return _then(_value.copyWith(
      units: units == freezed
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as List<WeatherUnit>,
    ));
  }
}

/// @nodoc
abstract class _$$_WeatherListCopyWith<$Res>
    implements $WeatherListCopyWith<$Res> {
  factory _$$_WeatherListCopyWith(
          _$_WeatherList value, $Res Function(_$_WeatherList) then) =
      __$$_WeatherListCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'list') List<WeatherUnit> units});
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
    Object? units = freezed,
  }) {
    return _then(_$_WeatherList(
      units: units == freezed
          ? _value._units
          : units // ignore: cast_nullable_to_non_nullable
              as List<WeatherUnit>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherList implements _WeatherList {
  const _$_WeatherList(
      {@JsonKey(name: 'list') required final List<WeatherUnit> units})
      : _units = units;

  factory _$_WeatherList.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherListFromJson(json);

  final List<WeatherUnit> _units;
  @override
  @JsonKey(name: 'list')
  List<WeatherUnit> get units {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_units);
  }

  @override
  String toString() {
    return 'WeatherList(units: $units)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherList &&
            const DeepCollectionEquality().equals(other._units, _units));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_units));

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
          {@JsonKey(name: 'list') required final List<WeatherUnit> units}) =
      _$_WeatherList;

  factory _WeatherList.fromJson(Map<String, dynamic> json) =
      _$_WeatherList.fromJson;

  @override
  @JsonKey(name: 'list')
  List<WeatherUnit> get units;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherListCopyWith<_$_WeatherList> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherUnit _$WeatherUnitFromJson(Map<String, dynamic> json) {
  return _WeatherUnit.fromJson(json);
}

/// @nodoc
mixin _$WeatherUnit {
  int? get dt => throw _privateConstructorUsedError;
  @JsonKey(name: 'main')
  MainWeatherInfo? get mainInfo => throw _privateConstructorUsedError;
  Wind? get wind => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherUnitCopyWith<WeatherUnit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherUnitCopyWith<$Res> {
  factory $WeatherUnitCopyWith(
          WeatherUnit value, $Res Function(WeatherUnit) then) =
      _$WeatherUnitCopyWithImpl<$Res>;
  $Res call(
      {int? dt, @JsonKey(name: 'main') MainWeatherInfo? mainInfo, Wind? wind});

  $MainWeatherInfoCopyWith<$Res>? get mainInfo;
  $WindCopyWith<$Res>? get wind;
}

/// @nodoc
class _$WeatherUnitCopyWithImpl<$Res> implements $WeatherUnitCopyWith<$Res> {
  _$WeatherUnitCopyWithImpl(this._value, this._then);

  final WeatherUnit _value;
  // ignore: unused_field
  final $Res Function(WeatherUnit) _then;

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
abstract class _$$_WeatherUnitCopyWith<$Res>
    implements $WeatherUnitCopyWith<$Res> {
  factory _$$_WeatherUnitCopyWith(
          _$_WeatherUnit value, $Res Function(_$_WeatherUnit) then) =
      __$$_WeatherUnitCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? dt, @JsonKey(name: 'main') MainWeatherInfo? mainInfo, Wind? wind});

  @override
  $MainWeatherInfoCopyWith<$Res>? get mainInfo;
  @override
  $WindCopyWith<$Res>? get wind;
}

/// @nodoc
class __$$_WeatherUnitCopyWithImpl<$Res> extends _$WeatherUnitCopyWithImpl<$Res>
    implements _$$_WeatherUnitCopyWith<$Res> {
  __$$_WeatherUnitCopyWithImpl(
      _$_WeatherUnit _value, $Res Function(_$_WeatherUnit) _then)
      : super(_value, (v) => _then(v as _$_WeatherUnit));

  @override
  _$_WeatherUnit get _value => super._value as _$_WeatherUnit;

  @override
  $Res call({
    Object? dt = freezed,
    Object? mainInfo = freezed,
    Object? wind = freezed,
  }) {
    return _then(_$_WeatherUnit(
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
@JsonSerializable()
class _$_WeatherUnit extends _WeatherUnit {
  const _$_WeatherUnit(
      {this.dt, @JsonKey(name: 'main') this.mainInfo, this.wind})
      : super._();

  factory _$_WeatherUnit.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherUnitFromJson(json);

  @override
  final int? dt;
  @override
  @JsonKey(name: 'main')
  final MainWeatherInfo? mainInfo;
  @override
  final Wind? wind;

  @override
  String toString() {
    return 'WeatherUnit(dt: $dt, mainInfo: $mainInfo, wind: $wind)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherUnit &&
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
  _$$_WeatherUnitCopyWith<_$_WeatherUnit> get copyWith =>
      __$$_WeatherUnitCopyWithImpl<_$_WeatherUnit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherUnitToJson(
      this,
    );
  }
}

abstract class _WeatherUnit extends WeatherUnit {
  const factory _WeatherUnit(
      {final int? dt,
      @JsonKey(name: 'main') final MainWeatherInfo? mainInfo,
      final Wind? wind}) = _$_WeatherUnit;
  const _WeatherUnit._() : super._();

  factory _WeatherUnit.fromJson(Map<String, dynamic> json) =
      _$_WeatherUnit.fromJson;

  @override
  int? get dt;
  @override
  @JsonKey(name: 'main')
  MainWeatherInfo? get mainInfo;
  @override
  Wind? get wind;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherUnitCopyWith<_$_WeatherUnit> get copyWith =>
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
