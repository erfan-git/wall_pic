// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photo_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhotoData _$PhotoDataFromJson(Map<String, dynamic> json) {
  return _PhotoData.fromJson(json);
}

/// @nodoc
mixin _$PhotoData {
  Photo? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoDataCopyWith<PhotoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoDataCopyWith<$Res> {
  factory $PhotoDataCopyWith(PhotoData value, $Res Function(PhotoData) then) =
      _$PhotoDataCopyWithImpl<$Res>;
  $Res call({Photo? data});

  $PhotoCopyWith<$Res>? get data;
}

/// @nodoc
class _$PhotoDataCopyWithImpl<$Res> implements $PhotoDataCopyWith<$Res> {
  _$PhotoDataCopyWithImpl(this._value, this._then);

  final PhotoData _value;
  // ignore: unused_field
  final $Res Function(PhotoData) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Photo?,
    ));
  }

  @override
  $PhotoCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PhotoCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_PhotoDataCopyWith<$Res> implements $PhotoDataCopyWith<$Res> {
  factory _$$_PhotoDataCopyWith(
          _$_PhotoData value, $Res Function(_$_PhotoData) then) =
      __$$_PhotoDataCopyWithImpl<$Res>;
  @override
  $Res call({Photo? data});

  @override
  $PhotoCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_PhotoDataCopyWithImpl<$Res> extends _$PhotoDataCopyWithImpl<$Res>
    implements _$$_PhotoDataCopyWith<$Res> {
  __$$_PhotoDataCopyWithImpl(
      _$_PhotoData _value, $Res Function(_$_PhotoData) _then)
      : super(_value, (v) => _then(v as _$_PhotoData));

  @override
  _$_PhotoData get _value => super._value as _$_PhotoData;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_PhotoData(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Photo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhotoData implements _PhotoData {
  _$_PhotoData({this.data});

  factory _$_PhotoData.fromJson(Map<String, dynamic> json) =>
      _$$_PhotoDataFromJson(json);

  @override
  final Photo? data;

  @override
  String toString() {
    return 'PhotoData(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotoData &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_PhotoDataCopyWith<_$_PhotoData> get copyWith =>
      __$$_PhotoDataCopyWithImpl<_$_PhotoData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotoDataToJson(this);
  }
}

abstract class _PhotoData implements PhotoData {
  factory _PhotoData({final Photo? data}) = _$_PhotoData;

  factory _PhotoData.fromJson(Map<String, dynamic> json) =
      _$_PhotoData.fromJson;

  @override
  Photo? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PhotoDataCopyWith<_$_PhotoData> get copyWith =>
      throw _privateConstructorUsedError;
}
