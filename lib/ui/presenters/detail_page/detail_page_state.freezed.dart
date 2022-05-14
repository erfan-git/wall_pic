// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'detail_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailPageState {
  AsyncRequestStatus? get requestStatus => throw _privateConstructorUsedError;
  Photo? get photo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailPageStateCopyWith<DetailPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailPageStateCopyWith<$Res> {
  factory $DetailPageStateCopyWith(
          DetailPageState value, $Res Function(DetailPageState) then) =
      _$DetailPageStateCopyWithImpl<$Res>;
  $Res call({AsyncRequestStatus? requestStatus, Photo? photo});

  $PhotoCopyWith<$Res>? get photo;
}

/// @nodoc
class _$DetailPageStateCopyWithImpl<$Res>
    implements $DetailPageStateCopyWith<$Res> {
  _$DetailPageStateCopyWithImpl(this._value, this._then);

  final DetailPageState _value;
  // ignore: unused_field
  final $Res Function(DetailPageState) _then;

  @override
  $Res call({
    Object? requestStatus = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      requestStatus: requestStatus == freezed
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as AsyncRequestStatus?,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo?,
    ));
  }

  @override
  $PhotoCopyWith<$Res>? get photo {
    if (_value.photo == null) {
      return null;
    }

    return $PhotoCopyWith<$Res>(_value.photo!, (value) {
      return _then(_value.copyWith(photo: value));
    });
  }
}

/// @nodoc
abstract class _$$_DetailPageStateCopyWith<$Res>
    implements $DetailPageStateCopyWith<$Res> {
  factory _$$_DetailPageStateCopyWith(
          _$_DetailPageState value, $Res Function(_$_DetailPageState) then) =
      __$$_DetailPageStateCopyWithImpl<$Res>;
  @override
  $Res call({AsyncRequestStatus? requestStatus, Photo? photo});

  @override
  $PhotoCopyWith<$Res>? get photo;
}

/// @nodoc
class __$$_DetailPageStateCopyWithImpl<$Res>
    extends _$DetailPageStateCopyWithImpl<$Res>
    implements _$$_DetailPageStateCopyWith<$Res> {
  __$$_DetailPageStateCopyWithImpl(
      _$_DetailPageState _value, $Res Function(_$_DetailPageState) _then)
      : super(_value, (v) => _then(v as _$_DetailPageState));

  @override
  _$_DetailPageState get _value => super._value as _$_DetailPageState;

  @override
  $Res call({
    Object? requestStatus = freezed,
    Object? photo = freezed,
  }) {
    return _then(_$_DetailPageState(
      requestStatus: requestStatus == freezed
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as AsyncRequestStatus?,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo?,
    ));
  }
}

/// @nodoc

class _$_DetailPageState implements _DetailPageState {
  _$_DetailPageState(
      {this.requestStatus = AsyncRequestStatus.initial, this.photo});

  @override
  @JsonKey()
  final AsyncRequestStatus? requestStatus;
  @override
  final Photo? photo;

  @override
  String toString() {
    return 'DetailPageState(requestStatus: $requestStatus, photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailPageState &&
            const DeepCollectionEquality()
                .equals(other.requestStatus, requestStatus) &&
            const DeepCollectionEquality().equals(other.photo, photo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(requestStatus),
      const DeepCollectionEquality().hash(photo));

  @JsonKey(ignore: true)
  @override
  _$$_DetailPageStateCopyWith<_$_DetailPageState> get copyWith =>
      __$$_DetailPageStateCopyWithImpl<_$_DetailPageState>(this, _$identity);
}

abstract class _DetailPageState implements DetailPageState {
  factory _DetailPageState(
      {final AsyncRequestStatus? requestStatus,
      final Photo? photo}) = _$_DetailPageState;

  @override
  AsyncRequestStatus? get requestStatus => throw _privateConstructorUsedError;
  @override
  Photo? get photo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DetailPageStateCopyWith<_$_DetailPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
