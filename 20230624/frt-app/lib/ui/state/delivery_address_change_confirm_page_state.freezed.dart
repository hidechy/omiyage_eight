// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_address_change_confirm_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeliveryAddressChangeConfirmPageState {
  MailSendType get mailSendType => throw _privateConstructorUsedError;
  bool get isCheckMainMail => throw _privateConstructorUsedError;
  bool get isCheckSubMail => throw _privateConstructorUsedError;
  MailMagazineType get mailMagazineType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeliveryAddressChangeConfirmPageStateCopyWith<
          DeliveryAddressChangeConfirmPageState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryAddressChangeConfirmPageStateCopyWith<$Res> {
  factory $DeliveryAddressChangeConfirmPageStateCopyWith(
          DeliveryAddressChangeConfirmPageState value,
          $Res Function(DeliveryAddressChangeConfirmPageState) then) =
      _$DeliveryAddressChangeConfirmPageStateCopyWithImpl<$Res,
          DeliveryAddressChangeConfirmPageState>;
  @useResult
  $Res call(
      {MailSendType mailSendType,
      bool isCheckMainMail,
      bool isCheckSubMail,
      MailMagazineType mailMagazineType});
}

/// @nodoc
class _$DeliveryAddressChangeConfirmPageStateCopyWithImpl<$Res,
        $Val extends DeliveryAddressChangeConfirmPageState>
    implements $DeliveryAddressChangeConfirmPageStateCopyWith<$Res> {
  _$DeliveryAddressChangeConfirmPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mailSendType = null,
    Object? isCheckMainMail = null,
    Object? isCheckSubMail = null,
    Object? mailMagazineType = null,
  }) {
    return _then(_value.copyWith(
      mailSendType: null == mailSendType
          ? _value.mailSendType
          : mailSendType // ignore: cast_nullable_to_non_nullable
              as MailSendType,
      isCheckMainMail: null == isCheckMainMail
          ? _value.isCheckMainMail
          : isCheckMainMail // ignore: cast_nullable_to_non_nullable
              as bool,
      isCheckSubMail: null == isCheckSubMail
          ? _value.isCheckSubMail
          : isCheckSubMail // ignore: cast_nullable_to_non_nullable
              as bool,
      mailMagazineType: null == mailMagazineType
          ? _value.mailMagazineType
          : mailMagazineType // ignore: cast_nullable_to_non_nullable
              as MailMagazineType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveryAddressChangeConfirmPageStateCopyWith<$Res>
    implements $DeliveryAddressChangeConfirmPageStateCopyWith<$Res> {
  factory _$$_DeliveryAddressChangeConfirmPageStateCopyWith(
          _$_DeliveryAddressChangeConfirmPageState value,
          $Res Function(_$_DeliveryAddressChangeConfirmPageState) then) =
      __$$_DeliveryAddressChangeConfirmPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MailSendType mailSendType,
      bool isCheckMainMail,
      bool isCheckSubMail,
      MailMagazineType mailMagazineType});
}

/// @nodoc
class __$$_DeliveryAddressChangeConfirmPageStateCopyWithImpl<$Res>
    extends _$DeliveryAddressChangeConfirmPageStateCopyWithImpl<$Res,
        _$_DeliveryAddressChangeConfirmPageState>
    implements _$$_DeliveryAddressChangeConfirmPageStateCopyWith<$Res> {
  __$$_DeliveryAddressChangeConfirmPageStateCopyWithImpl(
      _$_DeliveryAddressChangeConfirmPageState _value,
      $Res Function(_$_DeliveryAddressChangeConfirmPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mailSendType = null,
    Object? isCheckMainMail = null,
    Object? isCheckSubMail = null,
    Object? mailMagazineType = null,
  }) {
    return _then(_$_DeliveryAddressChangeConfirmPageState(
      mailSendType: null == mailSendType
          ? _value.mailSendType
          : mailSendType // ignore: cast_nullable_to_non_nullable
              as MailSendType,
      isCheckMainMail: null == isCheckMainMail
          ? _value.isCheckMainMail
          : isCheckMainMail // ignore: cast_nullable_to_non_nullable
              as bool,
      isCheckSubMail: null == isCheckSubMail
          ? _value.isCheckSubMail
          : isCheckSubMail // ignore: cast_nullable_to_non_nullable
              as bool,
      mailMagazineType: null == mailMagazineType
          ? _value.mailMagazineType
          : mailMagazineType // ignore: cast_nullable_to_non_nullable
              as MailMagazineType,
    ));
  }
}

/// @nodoc

class _$_DeliveryAddressChangeConfirmPageState
    implements _DeliveryAddressChangeConfirmPageState {
  _$_DeliveryAddressChangeConfirmPageState(
      {this.mailSendType = MailSendType.mainMailAddress,
      this.isCheckMainMail = false,
      this.isCheckSubMail = false,
      this.mailMagazineType = MailMagazineType.doNotSend});

  @override
  @JsonKey()
  final MailSendType mailSendType;
  @override
  @JsonKey()
  final bool isCheckMainMail;
  @override
  @JsonKey()
  final bool isCheckSubMail;
  @override
  @JsonKey()
  final MailMagazineType mailMagazineType;

  @override
  String toString() {
    return 'DeliveryAddressChangeConfirmPageState(mailSendType: $mailSendType, isCheckMainMail: $isCheckMainMail, isCheckSubMail: $isCheckSubMail, mailMagazineType: $mailMagazineType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryAddressChangeConfirmPageState &&
            (identical(other.mailSendType, mailSendType) ||
                other.mailSendType == mailSendType) &&
            (identical(other.isCheckMainMail, isCheckMainMail) ||
                other.isCheckMainMail == isCheckMainMail) &&
            (identical(other.isCheckSubMail, isCheckSubMail) ||
                other.isCheckSubMail == isCheckSubMail) &&
            (identical(other.mailMagazineType, mailMagazineType) ||
                other.mailMagazineType == mailMagazineType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mailSendType, isCheckMainMail,
      isCheckSubMail, mailMagazineType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryAddressChangeConfirmPageStateCopyWith<
          _$_DeliveryAddressChangeConfirmPageState>
      get copyWith => __$$_DeliveryAddressChangeConfirmPageStateCopyWithImpl<
          _$_DeliveryAddressChangeConfirmPageState>(this, _$identity);
}

abstract class _DeliveryAddressChangeConfirmPageState
    implements DeliveryAddressChangeConfirmPageState {
  factory _DeliveryAddressChangeConfirmPageState(
          {final MailSendType mailSendType,
          final bool isCheckMainMail,
          final bool isCheckSubMail,
          final MailMagazineType mailMagazineType}) =
      _$_DeliveryAddressChangeConfirmPageState;

  @override
  MailSendType get mailSendType;
  @override
  bool get isCheckMainMail;
  @override
  bool get isCheckSubMail;
  @override
  MailMagazineType get mailMagazineType;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryAddressChangeConfirmPageStateCopyWith<
          _$_DeliveryAddressChangeConfirmPageState>
      get copyWith => throw _privateConstructorUsedError;
}
