// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'akachanhonpo_store_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AkachanhonpoStoreInfoModel _$AkachanhonpoStoreInfoModelFromJson(
    Map<String, dynamic> json) {
  return _AkachanhonpoStoreInfoModel.fromJson(json);
}

/// @nodoc
mixin _$AkachanhonpoStoreInfoModel {
/* エリア情報 */
  String get area => throw _privateConstructorUsedError; /* 店舗情報 */
  List<String> get stores => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AkachanhonpoStoreInfoModelCopyWith<AkachanhonpoStoreInfoModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AkachanhonpoStoreInfoModelCopyWith<$Res> {
  factory $AkachanhonpoStoreInfoModelCopyWith(AkachanhonpoStoreInfoModel value,
          $Res Function(AkachanhonpoStoreInfoModel) then) =
      _$AkachanhonpoStoreInfoModelCopyWithImpl<$Res,
          AkachanhonpoStoreInfoModel>;
  @useResult
  $Res call({String area, List<String> stores});
}

/// @nodoc
class _$AkachanhonpoStoreInfoModelCopyWithImpl<$Res,
        $Val extends AkachanhonpoStoreInfoModel>
    implements $AkachanhonpoStoreInfoModelCopyWith<$Res> {
  _$AkachanhonpoStoreInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
    Object? stores = null,
  }) {
    return _then(_value.copyWith(
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      stores: null == stores
          ? _value.stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AkachanhonpoStoreInfoModelCopyWith<$Res>
    implements $AkachanhonpoStoreInfoModelCopyWith<$Res> {
  factory _$$_AkachanhonpoStoreInfoModelCopyWith(
          _$_AkachanhonpoStoreInfoModel value,
          $Res Function(_$_AkachanhonpoStoreInfoModel) then) =
      __$$_AkachanhonpoStoreInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String area, List<String> stores});
}

/// @nodoc
class __$$_AkachanhonpoStoreInfoModelCopyWithImpl<$Res>
    extends _$AkachanhonpoStoreInfoModelCopyWithImpl<$Res,
        _$_AkachanhonpoStoreInfoModel>
    implements _$$_AkachanhonpoStoreInfoModelCopyWith<$Res> {
  __$$_AkachanhonpoStoreInfoModelCopyWithImpl(
      _$_AkachanhonpoStoreInfoModel _value,
      $Res Function(_$_AkachanhonpoStoreInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
    Object? stores = null,
  }) {
    return _then(_$_AkachanhonpoStoreInfoModel(
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      stores: null == stores
          ? _value._stores
          : stores // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AkachanhonpoStoreInfoModel extends _AkachanhonpoStoreInfoModel {
  _$_AkachanhonpoStoreInfoModel(
      {this.area = '', final List<String> stores = const <String>[]})
      : _stores = stores,
        super._();

  factory _$_AkachanhonpoStoreInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_AkachanhonpoStoreInfoModelFromJson(json);

/* エリア情報 */
  @override
  @JsonKey()
  final String area;
/* 店舗情報 */
  final List<String> _stores;
/* 店舗情報 */
  @override
  @JsonKey()
  List<String> get stores {
    if (_stores is EqualUnmodifiableListView) return _stores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stores);
  }

  @override
  String toString() {
    return 'AkachanhonpoStoreInfoModel(area: $area, stores: $stores)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AkachanhonpoStoreInfoModel &&
            (identical(other.area, area) || other.area == area) &&
            const DeepCollectionEquality().equals(other._stores, _stores));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, area, const DeepCollectionEquality().hash(_stores));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AkachanhonpoStoreInfoModelCopyWith<_$_AkachanhonpoStoreInfoModel>
      get copyWith => __$$_AkachanhonpoStoreInfoModelCopyWithImpl<
          _$_AkachanhonpoStoreInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AkachanhonpoStoreInfoModelToJson(
      this,
    );
  }
}

abstract class _AkachanhonpoStoreInfoModel extends AkachanhonpoStoreInfoModel {
  factory _AkachanhonpoStoreInfoModel(
      {final String area,
      final List<String> stores}) = _$_AkachanhonpoStoreInfoModel;
  _AkachanhonpoStoreInfoModel._() : super._();

  factory _AkachanhonpoStoreInfoModel.fromJson(Map<String, dynamic> json) =
      _$_AkachanhonpoStoreInfoModel.fromJson;

  @override /* エリア情報 */
  String get area;
  @override /* 店舗情報 */
  List<String> get stores;
  @override
  @JsonKey(ignore: true)
  _$$_AkachanhonpoStoreInfoModelCopyWith<_$_AkachanhonpoStoreInfoModel>
      get copyWith => throw _privateConstructorUsedError;
}
