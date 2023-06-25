// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'web_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WebViewState {
  String? get title => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get canGoBack => throw _privateConstructorUsedError;
  bool get canGoForward => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WebViewStateCopyWith<WebViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebViewStateCopyWith<$Res> {
  factory $WebViewStateCopyWith(
          WebViewState value, $Res Function(WebViewState) then) =
      _$WebViewStateCopyWithImpl<$Res, WebViewState>;
  @useResult
  $Res call({String? title, bool loading, bool canGoBack, bool canGoForward});
}

/// @nodoc
class _$WebViewStateCopyWithImpl<$Res, $Val extends WebViewState>
    implements $WebViewStateCopyWith<$Res> {
  _$WebViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? loading = null,
    Object? canGoBack = null,
    Object? canGoForward = null,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      canGoBack: null == canGoBack
          ? _value.canGoBack
          : canGoBack // ignore: cast_nullable_to_non_nullable
              as bool,
      canGoForward: null == canGoForward
          ? _value.canGoForward
          : canGoForward // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WebViewStateCopyWith<$Res>
    implements $WebViewStateCopyWith<$Res> {
  factory _$$_WebViewStateCopyWith(
          _$_WebViewState value, $Res Function(_$_WebViewState) then) =
      __$$_WebViewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, bool loading, bool canGoBack, bool canGoForward});
}

/// @nodoc
class __$$_WebViewStateCopyWithImpl<$Res>
    extends _$WebViewStateCopyWithImpl<$Res, _$_WebViewState>
    implements _$$_WebViewStateCopyWith<$Res> {
  __$$_WebViewStateCopyWithImpl(
      _$_WebViewState _value, $Res Function(_$_WebViewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? loading = null,
    Object? canGoBack = null,
    Object? canGoForward = null,
  }) {
    return _then(_$_WebViewState(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      canGoBack: null == canGoBack
          ? _value.canGoBack
          : canGoBack // ignore: cast_nullable_to_non_nullable
              as bool,
      canGoForward: null == canGoForward
          ? _value.canGoForward
          : canGoForward // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_WebViewState implements _WebViewState {
  const _$_WebViewState(
      {this.title,
      this.loading = true,
      this.canGoBack = false,
      this.canGoForward = false});

  @override
  final String? title;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool canGoBack;
  @override
  @JsonKey()
  final bool canGoForward;

  @override
  String toString() {
    return 'WebViewState(title: $title, loading: $loading, canGoBack: $canGoBack, canGoForward: $canGoForward)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WebViewState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.canGoBack, canGoBack) ||
                other.canGoBack == canGoBack) &&
            (identical(other.canGoForward, canGoForward) ||
                other.canGoForward == canGoForward));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, loading, canGoBack, canGoForward);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WebViewStateCopyWith<_$_WebViewState> get copyWith =>
      __$$_WebViewStateCopyWithImpl<_$_WebViewState>(this, _$identity);
}

abstract class _WebViewState implements WebViewState {
  const factory _WebViewState(
      {final String? title,
      final bool loading,
      final bool canGoBack,
      final bool canGoForward}) = _$_WebViewState;

  @override
  String? get title;
  @override
  bool get loading;
  @override
  bool get canGoBack;
  @override
  bool get canGoForward;
  @override
  @JsonKey(ignore: true)
  _$$_WebViewStateCopyWith<_$_WebViewState> get copyWith =>
      throw _privateConstructorUsedError;
}
