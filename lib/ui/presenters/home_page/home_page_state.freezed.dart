// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomePageState {
  AsyncRequestStatus? get requestStatus => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  bool? get paginateLoading => throw _privateConstructorUsedError;
  PhotoList? get photoList => throw _privateConstructorUsedError;
  List<Photo>? get photos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res>;
  $Res call(
      {AsyncRequestStatus? requestStatus,
      int? page,
      bool? paginateLoading,
      PhotoList? photoList,
      List<Photo>? photos});

  $PhotoListCopyWith<$Res>? get photoList;
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  final HomePageState _value;
  // ignore: unused_field
  final $Res Function(HomePageState) _then;

  @override
  $Res call({
    Object? requestStatus = freezed,
    Object? page = freezed,
    Object? paginateLoading = freezed,
    Object? photoList = freezed,
    Object? photos = freezed,
  }) {
    return _then(_value.copyWith(
      requestStatus: requestStatus == freezed
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as AsyncRequestStatus?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      paginateLoading: paginateLoading == freezed
          ? _value.paginateLoading
          : paginateLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      photoList: photoList == freezed
          ? _value.photoList
          : photoList // ignore: cast_nullable_to_non_nullable
              as PhotoList?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
    ));
  }

  @override
  $PhotoListCopyWith<$Res>? get photoList {
    if (_value.photoList == null) {
      return null;
    }

    return $PhotoListCopyWith<$Res>(_value.photoList!, (value) {
      return _then(_value.copyWith(photoList: value));
    });
  }
}

/// @nodoc
abstract class _$$_HomePageStateCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$_HomePageStateCopyWith(
          _$_HomePageState value, $Res Function(_$_HomePageState) then) =
      __$$_HomePageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AsyncRequestStatus? requestStatus,
      int? page,
      bool? paginateLoading,
      PhotoList? photoList,
      List<Photo>? photos});

  @override
  $PhotoListCopyWith<$Res>? get photoList;
}

/// @nodoc
class __$$_HomePageStateCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res>
    implements _$$_HomePageStateCopyWith<$Res> {
  __$$_HomePageStateCopyWithImpl(
      _$_HomePageState _value, $Res Function(_$_HomePageState) _then)
      : super(_value, (v) => _then(v as _$_HomePageState));

  @override
  _$_HomePageState get _value => super._value as _$_HomePageState;

  @override
  $Res call({
    Object? requestStatus = freezed,
    Object? page = freezed,
    Object? paginateLoading = freezed,
    Object? photoList = freezed,
    Object? photos = freezed,
  }) {
    return _then(_$_HomePageState(
      requestStatus: requestStatus == freezed
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as AsyncRequestStatus?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      paginateLoading: paginateLoading == freezed
          ? _value.paginateLoading
          : paginateLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      photoList: photoList == freezed
          ? _value.photoList
          : photoList // ignore: cast_nullable_to_non_nullable
              as PhotoList?,
      photos: photos == freezed
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
    ));
  }
}

/// @nodoc

class _$_HomePageState implements _HomePageState {
  _$_HomePageState(
      {this.requestStatus = AsyncRequestStatus.initial,
      this.page = 1,
      this.paginateLoading = false,
      this.photoList,
      final List<Photo>? photos})
      : _photos = photos;

  @override
  @JsonKey()
  final AsyncRequestStatus? requestStatus;
  @override
  @JsonKey()
  final int? page;
  @override
  @JsonKey()
  final bool? paginateLoading;
  @override
  final PhotoList? photoList;
  final List<Photo>? _photos;
  @override
  List<Photo>? get photos {
    final value = _photos;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomePageState(requestStatus: $requestStatus, page: $page, paginateLoading: $paginateLoading, photoList: $photoList, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomePageState &&
            const DeepCollectionEquality()
                .equals(other.requestStatus, requestStatus) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality()
                .equals(other.paginateLoading, paginateLoading) &&
            const DeepCollectionEquality().equals(other.photoList, photoList) &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(requestStatus),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(paginateLoading),
      const DeepCollectionEquality().hash(photoList),
      const DeepCollectionEquality().hash(_photos));

  @JsonKey(ignore: true)
  @override
  _$$_HomePageStateCopyWith<_$_HomePageState> get copyWith =>
      __$$_HomePageStateCopyWithImpl<_$_HomePageState>(this, _$identity);
}

abstract class _HomePageState implements HomePageState {
  factory _HomePageState(
      {final AsyncRequestStatus? requestStatus,
      final int? page,
      final bool? paginateLoading,
      final PhotoList? photoList,
      final List<Photo>? photos}) = _$_HomePageState;

  @override
  AsyncRequestStatus? get requestStatus => throw _privateConstructorUsedError;
  @override
  int? get page => throw _privateConstructorUsedError;
  @override
  bool? get paginateLoading => throw _privateConstructorUsedError;
  @override
  PhotoList? get photoList => throw _privateConstructorUsedError;
  @override
  List<Photo>? get photos => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HomePageStateCopyWith<_$_HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}
