// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'timetable_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseData _$CourseDataFromJson(Map<String, dynamic> json) {
  return _CourseData.fromJson(json);
}

/// @nodoc
mixin _$CourseData {
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: '科目名')
  String get jpName => throw _privateConstructorUsedError;
  @JsonKey(name: "英語名")
  String get enName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseDataCopyWith<CourseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDataCopyWith<$Res> {
  factory $CourseDataCopyWith(
          CourseData value, $Res Function(CourseData) then) =
      _$CourseDataCopyWithImpl<$Res>;
  $Res call(
      {String url,
      @JsonKey(name: '科目名') String jpName,
      @JsonKey(name: "英語名") String enName});
}

/// @nodoc
class _$CourseDataCopyWithImpl<$Res> implements $CourseDataCopyWith<$Res> {
  _$CourseDataCopyWithImpl(this._value, this._then);

  final CourseData _value;
  // ignore: unused_field
  final $Res Function(CourseData) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? jpName = freezed,
    Object? enName = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      jpName: jpName == freezed
          ? _value.jpName
          : jpName // ignore: cast_nullable_to_non_nullable
              as String,
      enName: enName == freezed
          ? _value.enName
          : enName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CourseDataCopyWith<$Res> implements $CourseDataCopyWith<$Res> {
  factory _$CourseDataCopyWith(
          _CourseData value, $Res Function(_CourseData) then) =
      __$CourseDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String url,
      @JsonKey(name: '科目名') String jpName,
      @JsonKey(name: "英語名") String enName});
}

/// @nodoc
class __$CourseDataCopyWithImpl<$Res> extends _$CourseDataCopyWithImpl<$Res>
    implements _$CourseDataCopyWith<$Res> {
  __$CourseDataCopyWithImpl(
      _CourseData _value, $Res Function(_CourseData) _then)
      : super(_value, (v) => _then(v as _CourseData));

  @override
  _CourseData get _value => super._value as _CourseData;

  @override
  $Res call({
    Object? url = freezed,
    Object? jpName = freezed,
    Object? enName = freezed,
  }) {
    return _then(_CourseData(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      jpName: jpName == freezed
          ? _value.jpName
          : jpName // ignore: cast_nullable_to_non_nullable
              as String,
      enName: enName == freezed
          ? _value.enName
          : enName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseData with DiagnosticableTreeMixin implements _CourseData {
  const _$_CourseData(
      {this.url = "",
      @JsonKey(name: '科目名') this.jpName = "",
      @JsonKey(name: "英語名") this.enName = ""});

  factory _$_CourseData.fromJson(Map<String, dynamic> json) =>
      _$$_CourseDataFromJson(json);

  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey(name: '科目名')
  final String jpName;
  @override
  @JsonKey(name: "英語名")
  final String enName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseData(url: $url, jpName: $jpName, enName: $enName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CourseData'))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('jpName', jpName))
      ..add(DiagnosticsProperty('enName', enName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CourseData &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.jpName, jpName) &&
            const DeepCollectionEquality().equals(other.enName, enName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(jpName),
      const DeepCollectionEquality().hash(enName));

  @JsonKey(ignore: true)
  @override
  _$CourseDataCopyWith<_CourseData> get copyWith =>
      __$CourseDataCopyWithImpl<_CourseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseDataToJson(this);
  }
}

abstract class _CourseData implements CourseData {
  const factory _CourseData(
      {final String url,
      @JsonKey(name: '科目名') final String jpName,
      @JsonKey(name: "英語名") final String enName}) = _$_CourseData;

  factory _CourseData.fromJson(Map<String, dynamic> json) =
      _$_CourseData.fromJson;

  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: '科目名')
  String get jpName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "英語名")
  String get enName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CourseDataCopyWith<_CourseData> get copyWith =>
      throw _privateConstructorUsedError;
}

TimeTableData _$TimeTableDataFromJson(Map<String, dynamic> json) {
  return _TimeTableData.fromJson(json);
}

/// @nodoc
mixin _$TimeTableData {
  List<List<List<CourseData>>> get timeTable =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeTableDataCopyWith<TimeTableData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeTableDataCopyWith<$Res> {
  factory $TimeTableDataCopyWith(
          TimeTableData value, $Res Function(TimeTableData) then) =
      _$TimeTableDataCopyWithImpl<$Res>;
  $Res call({List<List<List<CourseData>>> timeTable});
}

/// @nodoc
class _$TimeTableDataCopyWithImpl<$Res>
    implements $TimeTableDataCopyWith<$Res> {
  _$TimeTableDataCopyWithImpl(this._value, this._then);

  final TimeTableData _value;
  // ignore: unused_field
  final $Res Function(TimeTableData) _then;

  @override
  $Res call({
    Object? timeTable = freezed,
  }) {
    return _then(_value.copyWith(
      timeTable: timeTable == freezed
          ? _value.timeTable
          : timeTable // ignore: cast_nullable_to_non_nullable
              as List<List<List<CourseData>>>,
    ));
  }
}

/// @nodoc
abstract class _$TimeTableDataCopyWith<$Res>
    implements $TimeTableDataCopyWith<$Res> {
  factory _$TimeTableDataCopyWith(
          _TimeTableData value, $Res Function(_TimeTableData) then) =
      __$TimeTableDataCopyWithImpl<$Res>;
  @override
  $Res call({List<List<List<CourseData>>> timeTable});
}

/// @nodoc
class __$TimeTableDataCopyWithImpl<$Res>
    extends _$TimeTableDataCopyWithImpl<$Res>
    implements _$TimeTableDataCopyWith<$Res> {
  __$TimeTableDataCopyWithImpl(
      _TimeTableData _value, $Res Function(_TimeTableData) _then)
      : super(_value, (v) => _then(v as _TimeTableData));

  @override
  _TimeTableData get _value => super._value as _TimeTableData;

  @override
  $Res call({
    Object? timeTable = freezed,
  }) {
    return _then(_TimeTableData(
      timeTable: timeTable == freezed
          ? _value.timeTable
          : timeTable // ignore: cast_nullable_to_non_nullable
              as List<List<List<CourseData>>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimeTableData with DiagnosticableTreeMixin implements _TimeTableData {
  const _$_TimeTableData(
      {final List<List<List<CourseData>>> timeTable = const [[]]})
      : _timeTable = timeTable;

  factory _$_TimeTableData.fromJson(Map<String, dynamic> json) =>
      _$$_TimeTableDataFromJson(json);

  final List<List<List<CourseData>>> _timeTable;
  @override
  @JsonKey()
  List<List<List<CourseData>>> get timeTable {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timeTable);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimeTableData(timeTable: $timeTable)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimeTableData'))
      ..add(DiagnosticsProperty('timeTable', timeTable));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimeTableData &&
            const DeepCollectionEquality().equals(other.timeTable, timeTable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(timeTable));

  @JsonKey(ignore: true)
  @override
  _$TimeTableDataCopyWith<_TimeTableData> get copyWith =>
      __$TimeTableDataCopyWithImpl<_TimeTableData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeTableDataToJson(this);
  }
}

abstract class _TimeTableData implements TimeTableData {
  const factory _TimeTableData({final List<List<List<CourseData>>> timeTable}) =
      _$_TimeTableData;

  factory _TimeTableData.fromJson(Map<String, dynamic> json) =
      _$_TimeTableData.fromJson;

  @override
  List<List<List<CourseData>>> get timeTable =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TimeTableDataCopyWith<_TimeTableData> get copyWith =>
      throw _privateConstructorUsedError;
}
