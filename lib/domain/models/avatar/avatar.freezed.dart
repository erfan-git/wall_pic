// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'avatar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Avatar _$AvatarFromJson(Map<String, dynamic> json) {
  return _Avatar.fromJson(json);
}

/// @nodoc
mixin _$Avatar {
  @JsonKey(name: '128px')
  String? get large2x => throw _privateConstructorUsedError;
  @JsonKey(name: '200px')
  String? get large => throw _privateConstructorUsedError;
  @JsonKey(name: '20px')
  String? get medium => throw _privateConstructorUsedError;
  @JsonKey(name: '32px')
  String? get tiny => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvatarCopyWith<Avatar> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarCopyWith<$Res> {
  factory $AvatarCopyWith(Avatar value, $Res Function(Avatar) then) =
      _$AvatarCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '128px') String? large2x,
      @JsonKey(name: '200px') String? large,
      @JsonKey(name: '20px') String? medium,
      @JsonKey(name: '32px') String? tiny});
}

/// @nodoc
class _$AvatarCopyWithImpl<$Res> implements $AvatarCopyWith<$Res> {
  _$AvatarCopyWithImpl(this._value, this._then);

  final Avatar _value;
  // ignore: unused_field
  final $Res Function(Avatar) _then;

  @override
  $Res call({
    Object? large2x = freezed,
    Object? large = freezed,
    Object? medium = freezed,
    Object? tiny = freezed,
  }) {
    return _then(_value.copyWith(
      large2x: large2x == freezed
          ? _value.large2x
          : large2x // ignore: cast_nullable_to_non_nullable
              as String?,
      large: large == freezed
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: medium == freezed
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      tiny: tiny == freezed
          ? _value.tiny
          : tiny // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AvatarCopyWith<$Res> implements $AvatarCopyWith<$Res> {
  factory _$$_AvatarCopyWith(_$_Avatar value, $Res Function(_$_Avatar) then) =
      __$$_AvatarCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '128px') String? large2x,
      @JsonKey(name: '200px') String? large,
      @JsonKey(name: '20px') String? medium,
      @JsonKey(name: '32px') String? tiny});
}

/// @nodoc
class __$$_AvatarCopyWithImpl<$Res> extends _$AvatarCopyWithImpl<$Res>
    implements _$$_AvatarCopyWith<$Res> {
  __$$_AvatarCopyWithImpl(_$_Avatar _value, $Res Function(_$_Avatar) _then)
      : super(_value, (v) => _then(v as _$_Avatar));

  @override
  _$_Avatar get _value => super._value as _$_Avatar;

  @override
  $Res call({
    Object? large2x = freezed,
    Object? large = freezed,
    Object? medium = freezed,
    Object? tiny = freezed,
  }) {
    return _then(_$_Avatar(
      large2x: large2x == freezed
          ? _value.large2x
          : large2x // ignore: cast_nullable_to_non_nullable
              as String?,
      large: large == freezed
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: medium == freezed
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      tiny: tiny == freezed
          ? _value.tiny
          : tiny // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Avatar implements _Avatar {
  _$_Avatar(
      {@JsonKey(name: '128px') this.large2x,
      @JsonKey(name: '200px') this.large,
      @JsonKey(name: '20px') this.medium,
      @JsonKey(name: '32px') this.tiny});

  factory _$_Avatar.fromJson(Map<String, dynamic> json) =>
      _$$_AvatarFromJson(json);

  @override
  @JsonKey(name: '128px')
  final String? large2x;
  @override
  @JsonKey(name: '200px')
  final String? large;
  @override
  @JsonKey(name: '20px')
  final String? medium;
  @override
  @JsonKey(name: '32px')
  final String? tiny;

  @override
  String toString() {
    return 'Avatar(large2x: $large2x, large: $large, medium: $medium, tiny: $tiny)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Avatar &&
            const DeepCollectionEquality().equals(other.large2x, large2x) &&
            const DeepCollectionEquality().equals(other.large, large) &&
            const DeepCollectionEquality().equals(other.medium, medium) &&
            const DeepCollectionEquality().equals(other.tiny, tiny));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(large2x),
      const DeepCollectionEquality().hash(large),
      const DeepCollectionEquality().hash(medium),
      const DeepCollectionEquality().hash(tiny));

  @JsonKey(ignore: true)
  @override
  _$$_AvatarCopyWith<_$_Avatar> get copyWith =>
      __$$_AvatarCopyWithImpl<_$_Avatar>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AvatarToJson(this);
  }
}

abstract class _Avatar implements Avatar {
  factory _Avatar(
      {@JsonKey(name: '128px') final String? large2x,
      @JsonKey(name: '200px') final String? large,
      @JsonKey(name: '20px') final String? medium,
      @JsonKey(name: '32px') final String? tiny}) = _$_Avatar;

  factory _Avatar.fromJson(Map<String, dynamic> json) = _$_Avatar.fromJson;

  @override
  @JsonKey(name: '128px')
  String? get large2x => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: '200px')
  String? get large => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: '20px')
  String? get medium => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: '32px')
  String? get tiny => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AvatarCopyWith<_$_Avatar> get copyWith =>
      throw _privateConstructorUsedError;
}
