// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'uploader.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Uploader _$UploaderFromJson(Map<String, dynamic> json) {
  return _Uploader.fromJson(json);
}

/// @nodoc
mixin _$Uploader {
  Avatar? get avatar => throw _privateConstructorUsedError;
  String? get group => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploaderCopyWith<Uploader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploaderCopyWith<$Res> {
  factory $UploaderCopyWith(Uploader value, $Res Function(Uploader) then) =
      _$UploaderCopyWithImpl<$Res>;
  $Res call({Avatar? avatar, String? group, String? username});

  $AvatarCopyWith<$Res>? get avatar;
}

/// @nodoc
class _$UploaderCopyWithImpl<$Res> implements $UploaderCopyWith<$Res> {
  _$UploaderCopyWithImpl(this._value, this._then);

  final Uploader _value;
  // ignore: unused_field
  final $Res Function(Uploader) _then;

  @override
  $Res call({
    Object? avatar = freezed,
    Object? group = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Avatar?,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $AvatarCopyWith<$Res>? get avatar {
    if (_value.avatar == null) {
      return null;
    }

    return $AvatarCopyWith<$Res>(_value.avatar!, (value) {
      return _then(_value.copyWith(avatar: value));
    });
  }
}

/// @nodoc
abstract class _$$_UploaderCopyWith<$Res> implements $UploaderCopyWith<$Res> {
  factory _$$_UploaderCopyWith(
          _$_Uploader value, $Res Function(_$_Uploader) then) =
      __$$_UploaderCopyWithImpl<$Res>;
  @override
  $Res call({Avatar? avatar, String? group, String? username});

  @override
  $AvatarCopyWith<$Res>? get avatar;
}

/// @nodoc
class __$$_UploaderCopyWithImpl<$Res> extends _$UploaderCopyWithImpl<$Res>
    implements _$$_UploaderCopyWith<$Res> {
  __$$_UploaderCopyWithImpl(
      _$_Uploader _value, $Res Function(_$_Uploader) _then)
      : super(_value, (v) => _then(v as _$_Uploader));

  @override
  _$_Uploader get _value => super._value as _$_Uploader;

  @override
  $Res call({
    Object? avatar = freezed,
    Object? group = freezed,
    Object? username = freezed,
  }) {
    return _then(_$_Uploader(
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Avatar?,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Uploader with DiagnosticableTreeMixin implements _Uploader {
  _$_Uploader({this.avatar, this.group, this.username});

  factory _$_Uploader.fromJson(Map<String, dynamic> json) =>
      _$$_UploaderFromJson(json);

  @override
  final Avatar? avatar;
  @override
  final String? group;
  @override
  final String? username;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Uploader(avatar: $avatar, group: $group, username: $username)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Uploader'))
      ..add(DiagnosticsProperty('avatar', avatar))
      ..add(DiagnosticsProperty('group', group))
      ..add(DiagnosticsProperty('username', username));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Uploader &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.group, group) &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(group),
      const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$_UploaderCopyWith<_$_Uploader> get copyWith =>
      __$$_UploaderCopyWithImpl<_$_Uploader>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UploaderToJson(this);
  }
}

abstract class _Uploader implements Uploader {
  factory _Uploader(
      {final Avatar? avatar,
      final String? group,
      final String? username}) = _$_Uploader;

  factory _Uploader.fromJson(Map<String, dynamic> json) = _$_Uploader.fromJson;

  @override
  Avatar? get avatar => throw _privateConstructorUsedError;
  @override
  String? get group => throw _privateConstructorUsedError;
  @override
  String? get username => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UploaderCopyWith<_$_Uploader> get copyWith =>
      throw _privateConstructorUsedError;
}
