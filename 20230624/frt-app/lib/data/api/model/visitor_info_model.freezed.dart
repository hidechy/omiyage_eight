// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visitor_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VisitorInfoModel {
  String get shopCode => throw _privateConstructorUsedError;
  String? get postalNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VisitorInfoModelCopyWith<VisitorInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitorInfoModelCopyWith<$Res> {
  factory $VisitorInfoModelCopyWith(
          VisitorInfoModel value, $Res Function(VisitorInfoModel) then) =
      _$VisitorInfoModelCopyWithImpl<$Res, VisitorInfoModel>;
  @useResult
  $Res call({String shopCode, String? postalNumber});
}

/// @nodoc
class _$VisitorInfoModelCopyWithImpl<$Res, $Val extends VisitorInfoModel>
    implements $VisitorInfoModelCopyWith<$Res> {
  _$VisitorInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopCode = null,
    Object? postalNumber = freezed,
  }) {
    return _then(_value.copyWith(
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
      postalNumber: freezed == postalNumber
          ? _value.postalNumber
          : postalNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VisitorInfoModelCopyWith<$Res>
    implements $VisitorInfoModelCopyWith<$Res> {
  factory _$$_VisitorInfoModelCopyWith(
          _$_VisitorInfoModel value, $Res Function(_$_VisitorInfoModel) then) =
      __$$_VisitorInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String shopCode, String? postalNumber});
}

/// @nodoc
class __$$_VisitorInfoModelCopyWithImpl<$Res>
    extends _$VisitorInfoModelCopyWithImpl<$Res, _$_VisitorInfoModel>
    implements _$$_VisitorInfoModelCopyWith<$Res> {
  __$$_VisitorInfoModelCopyWithImpl(
      _$_VisitorInfoModel _value, $Res Function(_$_VisitorInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopCode = null,
    Object? postalNumber = freezed,
  }) {
    return _then(_$_VisitorInfoModel(
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
      postalNumber: freezed == postalNumber
          ? _value.postalNumber
          : postalNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_VisitorInfoModel implements _VisitorInfoModel {
  const _$_VisitorInfoModel({this.shopCode = '', this.postalNumber});

  @override
  @JsonKey()
  final String shopCode;
  @override
  final String? postalNumber;

  @override
  String toString() {
    return 'VisitorInfoModel(shopCode: $shopCode, postalNumber: $postalNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VisitorInfoModel &&
            (identical(other.shopCode, shopCode) ||
                other.shopCode == shopCode) &&
            (identical(other.postalNumber, postalNumber) ||
                other.postalNumber == postalNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shopCode, postalNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VisitorInfoModelCopyWith<_$_VisitorInfoModel> get copyWith =>
      __$$_VisitorInfoModelCopyWithImpl<_$_VisitorInfoModel>(this, _$identity);
}

abstract class _VisitorInfoModel implements VisitorInfoModel {
  const factory _VisitorInfoModel(
      {final String shopCode,
      final String? postalNumber}) = _$_VisitorInfoModel;

  @override
  String get shopCode;
  @override
  String? get postalNumber;
  @override
  @JsonKey(ignore: true)
  _$$_VisitorInfoModelCopyWith<_$_VisitorInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
