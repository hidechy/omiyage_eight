// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'closed_shop_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClosedShopInfoModel _$ClosedShopInfoModelFromJson(Map<String, dynamic> json) {
  return _ClosedShopInfoModel.fromJson(json);
}

/// @nodoc
mixin _$ClosedShopInfoModel {
/* 閉店予定の店舗コード */
  String get shopCode => throw _privateConstructorUsedError; /* 閉店内容 */
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClosedShopInfoModelCopyWith<ClosedShopInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClosedShopInfoModelCopyWith<$Res> {
  factory $ClosedShopInfoModelCopyWith(
          ClosedShopInfoModel value, $Res Function(ClosedShopInfoModel) then) =
      _$ClosedShopInfoModelCopyWithImpl<$Res, ClosedShopInfoModel>;
  @useResult
  $Res call({String shopCode, String text});
}

/// @nodoc
class _$ClosedShopInfoModelCopyWithImpl<$Res, $Val extends ClosedShopInfoModel>
    implements $ClosedShopInfoModelCopyWith<$Res> {
  _$ClosedShopInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopCode = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClosedShopInfoModelCopyWith<$Res>
    implements $ClosedShopInfoModelCopyWith<$Res> {
  factory _$$_ClosedShopInfoModelCopyWith(_$_ClosedShopInfoModel value,
          $Res Function(_$_ClosedShopInfoModel) then) =
      __$$_ClosedShopInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String shopCode, String text});
}

/// @nodoc
class __$$_ClosedShopInfoModelCopyWithImpl<$Res>
    extends _$ClosedShopInfoModelCopyWithImpl<$Res, _$_ClosedShopInfoModel>
    implements _$$_ClosedShopInfoModelCopyWith<$Res> {
  __$$_ClosedShopInfoModelCopyWithImpl(_$_ClosedShopInfoModel _value,
      $Res Function(_$_ClosedShopInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopCode = null,
    Object? text = null,
  }) {
    return _then(_$_ClosedShopInfoModel(
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClosedShopInfoModel extends _ClosedShopInfoModel {
  const _$_ClosedShopInfoModel({this.shopCode = '', this.text = ''})
      : super._();

  factory _$_ClosedShopInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_ClosedShopInfoModelFromJson(json);

/* 閉店予定の店舗コード */
  @override
  @JsonKey()
  final String shopCode;
/* 閉店内容 */
  @override
  @JsonKey()
  final String text;

  @override
  String toString() {
    return 'ClosedShopInfoModel(shopCode: $shopCode, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClosedShopInfoModel &&
            (identical(other.shopCode, shopCode) ||
                other.shopCode == shopCode) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, shopCode, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClosedShopInfoModelCopyWith<_$_ClosedShopInfoModel> get copyWith =>
      __$$_ClosedShopInfoModelCopyWithImpl<_$_ClosedShopInfoModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClosedShopInfoModelToJson(
      this,
    );
  }
}

abstract class _ClosedShopInfoModel extends ClosedShopInfoModel {
  const factory _ClosedShopInfoModel(
      {final String shopCode, final String text}) = _$_ClosedShopInfoModel;
  const _ClosedShopInfoModel._() : super._();

  factory _ClosedShopInfoModel.fromJson(Map<String, dynamic> json) =
      _$_ClosedShopInfoModel.fromJson;

  @override /* 閉店予定の店舗コード */
  String get shopCode;
  @override /* 閉店内容 */
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_ClosedShopInfoModelCopyWith<_$_ClosedShopInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
