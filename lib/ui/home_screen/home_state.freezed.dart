// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() paginationLoading,
    required TResult Function(List<MotelDto> motels) success,
    required TResult Function() empty,
    required TResult Function(void Function() onTryAgain) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? paginationLoading,
    TResult? Function(List<MotelDto> motels)? success,
    TResult? Function()? empty,
    TResult? Function(void Function() onTryAgain)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? paginationLoading,
    TResult Function(List<MotelDto> motels)? success,
    TResult Function()? empty,
    TResult Function(void Function() onTryAgain)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInitial value) initial,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStatePaginationLoading value)
        paginationLoading,
    required TResult Function(HomeStateSuccess value) success,
    required TResult Function(HomeStateEmpty value) empty,
    required TResult Function(HomeStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInitial value)? initial,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStatePaginationLoading value)? paginationLoading,
    TResult? Function(HomeStateSuccess value)? success,
    TResult? Function(HomeStateEmpty value)? empty,
    TResult? Function(HomeStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStatePaginationLoading value)? paginationLoading,
    TResult Function(HomeStateSuccess value)? success,
    TResult Function(HomeStateEmpty value)? empty,
    TResult Function(HomeStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeStateInitialImplCopyWith<$Res> {
  factory _$$HomeStateInitialImplCopyWith(_$HomeStateInitialImpl value,
          $Res Function(_$HomeStateInitialImpl) then) =
      __$$HomeStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeStateInitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateInitialImpl>
    implements _$$HomeStateInitialImplCopyWith<$Res> {
  __$$HomeStateInitialImplCopyWithImpl(_$HomeStateInitialImpl _value,
      $Res Function(_$HomeStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeStateInitialImpl implements HomeStateInitial {
  _$HomeStateInitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() paginationLoading,
    required TResult Function(List<MotelDto> motels) success,
    required TResult Function() empty,
    required TResult Function(void Function() onTryAgain) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? paginationLoading,
    TResult? Function(List<MotelDto> motels)? success,
    TResult? Function()? empty,
    TResult? Function(void Function() onTryAgain)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? paginationLoading,
    TResult Function(List<MotelDto> motels)? success,
    TResult Function()? empty,
    TResult Function(void Function() onTryAgain)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInitial value) initial,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStatePaginationLoading value)
        paginationLoading,
    required TResult Function(HomeStateSuccess value) success,
    required TResult Function(HomeStateEmpty value) empty,
    required TResult Function(HomeStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInitial value)? initial,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStatePaginationLoading value)? paginationLoading,
    TResult? Function(HomeStateSuccess value)? success,
    TResult? Function(HomeStateEmpty value)? empty,
    TResult? Function(HomeStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStatePaginationLoading value)? paginationLoading,
    TResult Function(HomeStateSuccess value)? success,
    TResult Function(HomeStateEmpty value)? empty,
    TResult Function(HomeStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HomeStateInitial implements HomeState {
  factory HomeStateInitial() = _$HomeStateInitialImpl;
}

/// @nodoc
abstract class _$$HomeStateLoadingImplCopyWith<$Res> {
  factory _$$HomeStateLoadingImplCopyWith(_$HomeStateLoadingImpl value,
          $Res Function(_$HomeStateLoadingImpl) then) =
      __$$HomeStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeStateLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateLoadingImpl>
    implements _$$HomeStateLoadingImplCopyWith<$Res> {
  __$$HomeStateLoadingImplCopyWithImpl(_$HomeStateLoadingImpl _value,
      $Res Function(_$HomeStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeStateLoadingImpl implements HomeStateLoading {
  _$HomeStateLoadingImpl();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() paginationLoading,
    required TResult Function(List<MotelDto> motels) success,
    required TResult Function() empty,
    required TResult Function(void Function() onTryAgain) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? paginationLoading,
    TResult? Function(List<MotelDto> motels)? success,
    TResult? Function()? empty,
    TResult? Function(void Function() onTryAgain)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? paginationLoading,
    TResult Function(List<MotelDto> motels)? success,
    TResult Function()? empty,
    TResult Function(void Function() onTryAgain)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInitial value) initial,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStatePaginationLoading value)
        paginationLoading,
    required TResult Function(HomeStateSuccess value) success,
    required TResult Function(HomeStateEmpty value) empty,
    required TResult Function(HomeStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInitial value)? initial,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStatePaginationLoading value)? paginationLoading,
    TResult? Function(HomeStateSuccess value)? success,
    TResult? Function(HomeStateEmpty value)? empty,
    TResult? Function(HomeStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStatePaginationLoading value)? paginationLoading,
    TResult Function(HomeStateSuccess value)? success,
    TResult Function(HomeStateEmpty value)? empty,
    TResult Function(HomeStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeStateLoading implements HomeState {
  factory HomeStateLoading() = _$HomeStateLoadingImpl;
}

/// @nodoc
abstract class _$$HomeStatePaginationLoadingImplCopyWith<$Res> {
  factory _$$HomeStatePaginationLoadingImplCopyWith(
          _$HomeStatePaginationLoadingImpl value,
          $Res Function(_$HomeStatePaginationLoadingImpl) then) =
      __$$HomeStatePaginationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeStatePaginationLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStatePaginationLoadingImpl>
    implements _$$HomeStatePaginationLoadingImplCopyWith<$Res> {
  __$$HomeStatePaginationLoadingImplCopyWithImpl(
      _$HomeStatePaginationLoadingImpl _value,
      $Res Function(_$HomeStatePaginationLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeStatePaginationLoadingImpl implements HomeStatePaginationLoading {
  _$HomeStatePaginationLoadingImpl();

  @override
  String toString() {
    return 'HomeState.paginationLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStatePaginationLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() paginationLoading,
    required TResult Function(List<MotelDto> motels) success,
    required TResult Function() empty,
    required TResult Function(void Function() onTryAgain) error,
  }) {
    return paginationLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? paginationLoading,
    TResult? Function(List<MotelDto> motels)? success,
    TResult? Function()? empty,
    TResult? Function(void Function() onTryAgain)? error,
  }) {
    return paginationLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? paginationLoading,
    TResult Function(List<MotelDto> motels)? success,
    TResult Function()? empty,
    TResult Function(void Function() onTryAgain)? error,
    required TResult orElse(),
  }) {
    if (paginationLoading != null) {
      return paginationLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInitial value) initial,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStatePaginationLoading value)
        paginationLoading,
    required TResult Function(HomeStateSuccess value) success,
    required TResult Function(HomeStateEmpty value) empty,
    required TResult Function(HomeStateError value) error,
  }) {
    return paginationLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInitial value)? initial,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStatePaginationLoading value)? paginationLoading,
    TResult? Function(HomeStateSuccess value)? success,
    TResult? Function(HomeStateEmpty value)? empty,
    TResult? Function(HomeStateError value)? error,
  }) {
    return paginationLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStatePaginationLoading value)? paginationLoading,
    TResult Function(HomeStateSuccess value)? success,
    TResult Function(HomeStateEmpty value)? empty,
    TResult Function(HomeStateError value)? error,
    required TResult orElse(),
  }) {
    if (paginationLoading != null) {
      return paginationLoading(this);
    }
    return orElse();
  }
}

abstract class HomeStatePaginationLoading implements HomeState {
  factory HomeStatePaginationLoading() = _$HomeStatePaginationLoadingImpl;
}

/// @nodoc
abstract class _$$HomeStateSuccessImplCopyWith<$Res> {
  factory _$$HomeStateSuccessImplCopyWith(_$HomeStateSuccessImpl value,
          $Res Function(_$HomeStateSuccessImpl) then) =
      __$$HomeStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MotelDto> motels});
}

/// @nodoc
class __$$HomeStateSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateSuccessImpl>
    implements _$$HomeStateSuccessImplCopyWith<$Res> {
  __$$HomeStateSuccessImplCopyWithImpl(_$HomeStateSuccessImpl _value,
      $Res Function(_$HomeStateSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? motels = null,
  }) {
    return _then(_$HomeStateSuccessImpl(
      motels: null == motels
          ? _value._motels
          : motels // ignore: cast_nullable_to_non_nullable
              as List<MotelDto>,
    ));
  }
}

/// @nodoc

class _$HomeStateSuccessImpl implements HomeStateSuccess {
  _$HomeStateSuccessImpl({required final List<MotelDto> motels})
      : _motels = motels;

  final List<MotelDto> _motels;
  @override
  List<MotelDto> get motels {
    if (_motels is EqualUnmodifiableListView) return _motels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_motels);
  }

  @override
  String toString() {
    return 'HomeState.success(motels: $motels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateSuccessImpl &&
            const DeepCollectionEquality().equals(other._motels, _motels));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_motels));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateSuccessImplCopyWith<_$HomeStateSuccessImpl> get copyWith =>
      __$$HomeStateSuccessImplCopyWithImpl<_$HomeStateSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() paginationLoading,
    required TResult Function(List<MotelDto> motels) success,
    required TResult Function() empty,
    required TResult Function(void Function() onTryAgain) error,
  }) {
    return success(motels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? paginationLoading,
    TResult? Function(List<MotelDto> motels)? success,
    TResult? Function()? empty,
    TResult? Function(void Function() onTryAgain)? error,
  }) {
    return success?.call(motels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? paginationLoading,
    TResult Function(List<MotelDto> motels)? success,
    TResult Function()? empty,
    TResult Function(void Function() onTryAgain)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(motels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInitial value) initial,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStatePaginationLoading value)
        paginationLoading,
    required TResult Function(HomeStateSuccess value) success,
    required TResult Function(HomeStateEmpty value) empty,
    required TResult Function(HomeStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInitial value)? initial,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStatePaginationLoading value)? paginationLoading,
    TResult? Function(HomeStateSuccess value)? success,
    TResult? Function(HomeStateEmpty value)? empty,
    TResult? Function(HomeStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStatePaginationLoading value)? paginationLoading,
    TResult Function(HomeStateSuccess value)? success,
    TResult Function(HomeStateEmpty value)? empty,
    TResult Function(HomeStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class HomeStateSuccess implements HomeState {
  factory HomeStateSuccess({required final List<MotelDto> motels}) =
      _$HomeStateSuccessImpl;

  List<MotelDto> get motels;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateSuccessImplCopyWith<_$HomeStateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeStateEmptyImplCopyWith<$Res> {
  factory _$$HomeStateEmptyImplCopyWith(_$HomeStateEmptyImpl value,
          $Res Function(_$HomeStateEmptyImpl) then) =
      __$$HomeStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeStateEmptyImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateEmptyImpl>
    implements _$$HomeStateEmptyImplCopyWith<$Res> {
  __$$HomeStateEmptyImplCopyWithImpl(
      _$HomeStateEmptyImpl _value, $Res Function(_$HomeStateEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeStateEmptyImpl implements HomeStateEmpty {
  _$HomeStateEmptyImpl();

  @override
  String toString() {
    return 'HomeState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() paginationLoading,
    required TResult Function(List<MotelDto> motels) success,
    required TResult Function() empty,
    required TResult Function(void Function() onTryAgain) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? paginationLoading,
    TResult? Function(List<MotelDto> motels)? success,
    TResult? Function()? empty,
    TResult? Function(void Function() onTryAgain)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? paginationLoading,
    TResult Function(List<MotelDto> motels)? success,
    TResult Function()? empty,
    TResult Function(void Function() onTryAgain)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInitial value) initial,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStatePaginationLoading value)
        paginationLoading,
    required TResult Function(HomeStateSuccess value) success,
    required TResult Function(HomeStateEmpty value) empty,
    required TResult Function(HomeStateError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInitial value)? initial,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStatePaginationLoading value)? paginationLoading,
    TResult? Function(HomeStateSuccess value)? success,
    TResult? Function(HomeStateEmpty value)? empty,
    TResult? Function(HomeStateError value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStatePaginationLoading value)? paginationLoading,
    TResult Function(HomeStateSuccess value)? success,
    TResult Function(HomeStateEmpty value)? empty,
    TResult Function(HomeStateError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class HomeStateEmpty implements HomeState {
  factory HomeStateEmpty() = _$HomeStateEmptyImpl;
}

/// @nodoc
abstract class _$$HomeStateErrorImplCopyWith<$Res> {
  factory _$$HomeStateErrorImplCopyWith(_$HomeStateErrorImpl value,
          $Res Function(_$HomeStateErrorImpl) then) =
      __$$HomeStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({void Function() onTryAgain});
}

/// @nodoc
class __$$HomeStateErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateErrorImpl>
    implements _$$HomeStateErrorImplCopyWith<$Res> {
  __$$HomeStateErrorImplCopyWithImpl(
      _$HomeStateErrorImpl _value, $Res Function(_$HomeStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onTryAgain = null,
  }) {
    return _then(_$HomeStateErrorImpl(
      onTryAgain: null == onTryAgain
          ? _value.onTryAgain
          : onTryAgain // ignore: cast_nullable_to_non_nullable
              as void Function(),
    ));
  }
}

/// @nodoc

class _$HomeStateErrorImpl implements HomeStateError {
  _$HomeStateErrorImpl({required this.onTryAgain});

  @override
  final void Function() onTryAgain;

  @override
  String toString() {
    return 'HomeState.error(onTryAgain: $onTryAgain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateErrorImpl &&
            (identical(other.onTryAgain, onTryAgain) ||
                other.onTryAgain == onTryAgain));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onTryAgain);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateErrorImplCopyWith<_$HomeStateErrorImpl> get copyWith =>
      __$$HomeStateErrorImplCopyWithImpl<_$HomeStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() paginationLoading,
    required TResult Function(List<MotelDto> motels) success,
    required TResult Function() empty,
    required TResult Function(void Function() onTryAgain) error,
  }) {
    return error(onTryAgain);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? paginationLoading,
    TResult? Function(List<MotelDto> motels)? success,
    TResult? Function()? empty,
    TResult? Function(void Function() onTryAgain)? error,
  }) {
    return error?.call(onTryAgain);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? paginationLoading,
    TResult Function(List<MotelDto> motels)? success,
    TResult Function()? empty,
    TResult Function(void Function() onTryAgain)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(onTryAgain);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInitial value) initial,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStatePaginationLoading value)
        paginationLoading,
    required TResult Function(HomeStateSuccess value) success,
    required TResult Function(HomeStateEmpty value) empty,
    required TResult Function(HomeStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInitial value)? initial,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStatePaginationLoading value)? paginationLoading,
    TResult? Function(HomeStateSuccess value)? success,
    TResult? Function(HomeStateEmpty value)? empty,
    TResult? Function(HomeStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStatePaginationLoading value)? paginationLoading,
    TResult Function(HomeStateSuccess value)? success,
    TResult Function(HomeStateEmpty value)? empty,
    TResult Function(HomeStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HomeStateError implements HomeState {
  factory HomeStateError({required final void Function() onTryAgain}) =
      _$HomeStateErrorImpl;

  void Function() get onTryAgain;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateErrorImplCopyWith<_$HomeStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
