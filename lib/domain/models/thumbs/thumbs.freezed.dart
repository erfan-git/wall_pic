// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'thumbs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Thumbs _$ThumbsFromJson(Map<String, dynamic> json) {
  return _Thumbs.fromJson(json);
}

/// @nodoc
mixin _$Thumbs {
  String? get large => throw _privateConstructorUsedError;
  String? get original => throw _privateConstructorUsedError;
  String? get small => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThumbsCopyWith<Thumbs> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThumbsCopyWith<$Res> {
  factory $ThumbsCopyWith(Thumbs value, $Res Function(Thumbs) then) =
      _$ThumbsCopyWithImpl<$Res>;
  $Res call({String? large, String? original, String? small});
}

/// @nodoc
class _$ThumbsCopyWithImpl<$Res> implements $ThumbsCopyWith<$Res> {
  _$ThumbsCopyWithImpl(this._value, this._then);

  final Thumbs _value;
  // ignore: unused_field
  final $Res Function(Thumbs) _then;

  @override
  $Res call({
    Object? large = freezed,
    Object? original = freezed,
    Object? small = freezed,
  }) {
    return _then(_value.copyWith(
      large: large == freezed
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      original: original == freezed
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String?,
      small: small == freezed
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ThumbsCopyWith<$Res> implements $ThumbsCopyWith<$Res> {
  factory _$$_ThumbsCopyWith(_$_Thumbs value, $Res Function(_$_Thumbs) then) =
      __$$_ThumbsCopyWithImpl<$Res>;
  @override
  $Res call({String? large, String? original, String? small});
}

/// @nodoc
class __$$_ThumbsCopyWithImpl<$Res> extends _$ThumbsCopyWithImpl<$Res>
    implements _$$_ThumbsCopyWith<$Res> {
  __$$_ThumbsCopyWithImpl(_$_Thumbs _value, $Res Function(_$_Thumbs) _then)
      : super(_value, (v) => _then(v as _$_Thumbs));

  @override
  _$_Thumbs get _value => super._value as _$_Thumbs;

  @override
  $Res call({
    Object? large = freezed,
    Object? original = freezed,
    Object? small = freezed,
  }) {
    return _then(_$_Thumbs(
      large: large == freezed
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      original: original == freezed
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String?,
      small: small == freezed
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Thumbs implements _Thumbs {
  _$_Thumbs({this.large, this.original, this.small});

  factory _$_Thumbs.fromJson(Map<String, dynamic> json) =>
      _$$_ThumbsFromJson(json);

  @override
  final String? large;
  @override
  final String? original;
  @override
  final String? small;

  @override
  String toString() {
    return 'Thumbs(large: $large, original: $original, small: $small)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Thumbs &&
            const DeepCollectionEquality().equals(other.large, large) &&
            const DeepCollectionEquality().equals(other.original, original) &&
            const DeepCollectionEquality().equals(other.small, small));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(large),
      const DeepCollectionEquality().hash(original),
      const DeepCollectionEquality().hash(small));

  @JsonKey(ignore: true)
  @override
  _$$_ThumbsCopyWith<_$_Thumbs> get copyWith =>
      __$$_ThumbsCopyWithImpl<_$_Thumbs>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ThumbsToJson(this);
  }
}

abstract class _Thumbs implements Thumbs {
  factory _Thumbs(
      {final String? large,
      final String? original,
      final String? small}) = _$_Thumbs;

  factory _Thumbs.fromJson(Map<String, dynamic> json) = _$_Thumbs.fromJson;

  @override
  String? get large => throw _privateConstructorUsedError;
  @override
  String? get original => throw _privateConstructorUsedError;
  @override
  String? get small => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ThumbsCopyWith<_$_Thumbs> get copyWith =>
      throw _privateConstructorUsedError;
}
