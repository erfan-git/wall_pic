// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photo_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhotoList _$PhotoListFromJson(Map<String, dynamic> json) {
  return _PhotoList.fromJson(json);
}

/// @nodoc
mixin _$PhotoList {
  List<Photo>? get data => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoListCopyWith<PhotoList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoListCopyWith<$Res> {
  factory $PhotoListCopyWith(PhotoList value, $Res Function(PhotoList) then) =
      _$PhotoListCopyWithImpl<$Res>;
  $Res call({List<Photo>? data, Meta? meta});

  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$PhotoListCopyWithImpl<$Res> implements $PhotoListCopyWith<$Res> {
  _$PhotoListCopyWithImpl(this._value, this._then);

  final PhotoList _value;
  // ignore: unused_field
  final $Res Function(PhotoList) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }

  @override
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$$_PhotoListCopyWith<$Res> implements $PhotoListCopyWith<$Res> {
  factory _$$_PhotoListCopyWith(
          _$_PhotoList value, $Res Function(_$_PhotoList) then) =
      __$$_PhotoListCopyWithImpl<$Res>;
  @override
  $Res call({List<Photo>? data, Meta? meta});

  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_PhotoListCopyWithImpl<$Res> extends _$PhotoListCopyWithImpl<$Res>
    implements _$$_PhotoListCopyWith<$Res> {
  __$$_PhotoListCopyWithImpl(
      _$_PhotoList _value, $Res Function(_$_PhotoList) _then)
      : super(_value, (v) => _then(v as _$_PhotoList));

  @override
  _$_PhotoList get _value => super._value as _$_PhotoList;

  @override
  $Res call({
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_PhotoList(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhotoList implements _PhotoList {
  _$_PhotoList({final List<Photo>? data, this.meta}) : _data = data;

  factory _$_PhotoList.fromJson(Map<String, dynamic> json) =>
      _$$_PhotoListFromJson(json);

  final List<Photo>? _data;
  @override
  List<Photo>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Meta? meta;

  @override
  String toString() {
    return 'PhotoList(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotoList &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.meta, meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(meta));

  @JsonKey(ignore: true)
  @override
  _$$_PhotoListCopyWith<_$_PhotoList> get copyWith =>
      __$$_PhotoListCopyWithImpl<_$_PhotoList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotoListToJson(this);
  }
}

abstract class _PhotoList implements PhotoList {
  factory _PhotoList({final List<Photo>? data, final Meta? meta}) =
      _$_PhotoList;

  factory _PhotoList.fromJson(Map<String, dynamic> json) =
      _$_PhotoList.fromJson;

  @override
  List<Photo>? get data => throw _privateConstructorUsedError;
  @override
  Meta? get meta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PhotoListCopyWith<_$_PhotoList> get copyWith =>
      throw _privateConstructorUsedError;
}
