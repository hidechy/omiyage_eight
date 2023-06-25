// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'akachanhonpo_category_top_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AkachanhonpoCategoryTopInfoModel _$AkachanhonpoCategoryTopInfoModelFromJson(
    Map<String, dynamic> json) {
  return _AkachanhonpoCategoryInfoModel.fromJson(json);
}

/// @nodoc
mixin _$AkachanhonpoCategoryTopInfoModel {
/* 赤ちゃん本舗カテゴリ情報モデル */
  List<AkachanhonpoCategoryInfoModel> get categoryList =>
      throw _privateConstructorUsedError; /* 赤ちゃん本舗実施店舗情報モデル */
  List<AkachanhonpoStoreInfoModel> get storeList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AkachanhonpoCategoryTopInfoModelCopyWith<AkachanhonpoCategoryTopInfoModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AkachanhonpoCategoryTopInfoModelCopyWith<$Res> {
  factory $AkachanhonpoCategoryTopInfoModelCopyWith(
          AkachanhonpoCategoryTopInfoModel value,
          $Res Function(AkachanhonpoCategoryTopInfoModel) then) =
      _$AkachanhonpoCategoryTopInfoModelCopyWithImpl<$Res,
          AkachanhonpoCategoryTopInfoModel>;
  @useResult
  $Res call(
      {List<AkachanhonpoCategoryInfoModel> categoryList,
      List<AkachanhonpoStoreInfoModel> storeList});
}

/// @nodoc
class _$AkachanhonpoCategoryTopInfoModelCopyWithImpl<$Res,
        $Val extends AkachanhonpoCategoryTopInfoModel>
    implements $AkachanhonpoCategoryTopInfoModelCopyWith<$Res> {
  _$AkachanhonpoCategoryTopInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
    Object? storeList = null,
  }) {
    return _then(_value.copyWith(
      categoryList: null == categoryList
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<AkachanhonpoCategoryInfoModel>,
      storeList: null == storeList
          ? _value.storeList
          : storeList // ignore: cast_nullable_to_non_nullable
              as List<AkachanhonpoStoreInfoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AkachanhonpoCategoryInfoModelCopyWith<$Res>
    implements $AkachanhonpoCategoryTopInfoModelCopyWith<$Res> {
  factory _$$_AkachanhonpoCategoryInfoModelCopyWith(
          _$_AkachanhonpoCategoryInfoModel value,
          $Res Function(_$_AkachanhonpoCategoryInfoModel) then) =
      __$$_AkachanhonpoCategoryInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AkachanhonpoCategoryInfoModel> categoryList,
      List<AkachanhonpoStoreInfoModel> storeList});
}

/// @nodoc
class __$$_AkachanhonpoCategoryInfoModelCopyWithImpl<$Res>
    extends _$AkachanhonpoCategoryTopInfoModelCopyWithImpl<$Res,
        _$_AkachanhonpoCategoryInfoModel>
    implements _$$_AkachanhonpoCategoryInfoModelCopyWith<$Res> {
  __$$_AkachanhonpoCategoryInfoModelCopyWithImpl(
      _$_AkachanhonpoCategoryInfoModel _value,
      $Res Function(_$_AkachanhonpoCategoryInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
    Object? storeList = null,
  }) {
    return _then(_$_AkachanhonpoCategoryInfoModel(
      categoryList: null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<AkachanhonpoCategoryInfoModel>,
      storeList: null == storeList
          ? _value._storeList
          : storeList // ignore: cast_nullable_to_non_nullable
              as List<AkachanhonpoStoreInfoModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AkachanhonpoCategoryInfoModel extends _AkachanhonpoCategoryInfoModel {
  const _$_AkachanhonpoCategoryInfoModel(
      {final List<AkachanhonpoCategoryInfoModel> categoryList =
          const <AkachanhonpoCategoryInfoModel>[],
      final List<AkachanhonpoStoreInfoModel> storeList =
          const <AkachanhonpoStoreInfoModel>[]})
      : _categoryList = categoryList,
        _storeList = storeList,
        super._();

  factory _$_AkachanhonpoCategoryInfoModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_AkachanhonpoCategoryInfoModelFromJson(json);

/* 赤ちゃん本舗カテゴリ情報モデル */
  final List<AkachanhonpoCategoryInfoModel> _categoryList;
/* 赤ちゃん本舗カテゴリ情報モデル */
  @override
  @JsonKey()
  List<AkachanhonpoCategoryInfoModel> get categoryList {
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

/* 赤ちゃん本舗実施店舗情報モデル */
  final List<AkachanhonpoStoreInfoModel> _storeList;
/* 赤ちゃん本舗実施店舗情報モデル */
  @override
  @JsonKey()
  List<AkachanhonpoStoreInfoModel> get storeList {
    if (_storeList is EqualUnmodifiableListView) return _storeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_storeList);
  }

  @override
  String toString() {
    return 'AkachanhonpoCategoryTopInfoModel(categoryList: $categoryList, storeList: $storeList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AkachanhonpoCategoryInfoModel &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList) &&
            const DeepCollectionEquality()
                .equals(other._storeList, _storeList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categoryList),
      const DeepCollectionEquality().hash(_storeList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AkachanhonpoCategoryInfoModelCopyWith<_$_AkachanhonpoCategoryInfoModel>
      get copyWith => __$$_AkachanhonpoCategoryInfoModelCopyWithImpl<
          _$_AkachanhonpoCategoryInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AkachanhonpoCategoryInfoModelToJson(
      this,
    );
  }
}

abstract class _AkachanhonpoCategoryInfoModel
    extends AkachanhonpoCategoryTopInfoModel {
  const factory _AkachanhonpoCategoryInfoModel(
          {final List<AkachanhonpoCategoryInfoModel> categoryList,
          final List<AkachanhonpoStoreInfoModel> storeList}) =
      _$_AkachanhonpoCategoryInfoModel;
  const _AkachanhonpoCategoryInfoModel._() : super._();

  factory _AkachanhonpoCategoryInfoModel.fromJson(Map<String, dynamic> json) =
      _$_AkachanhonpoCategoryInfoModel.fromJson;

  @override /* 赤ちゃん本舗カテゴリ情報モデル */
  List<AkachanhonpoCategoryInfoModel> get categoryList;
  @override /* 赤ちゃん本舗実施店舗情報モデル */
  List<AkachanhonpoStoreInfoModel> get storeList;
  @override
  @JsonKey(ignore: true)
  _$$_AkachanhonpoCategoryInfoModelCopyWith<_$_AkachanhonpoCategoryInfoModel>
      get copyWith => throw _privateConstructorUsedError;
}
