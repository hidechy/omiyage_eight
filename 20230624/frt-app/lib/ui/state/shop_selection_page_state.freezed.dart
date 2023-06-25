// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_selection_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShopSelectionPageState {
  List<ReceiptLocationsModel> get visibleShops =>
      throw _privateConstructorUsedError;
  String get selectedMarkerId => throw _privateConstructorUsedError;
  String get selectedShopCode => throw _privateConstructorUsedError;
  String get selectedShopName => throw _privateConstructorUsedError;
  List<ReceiptLocationsModel> get receiptPointInformationList =>
      throw _privateConstructorUsedError; // 万が一nullの場合は木場店の座標を表示
  LatLng get currentLatLng => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopSelectionPageStateCopyWith<ShopSelectionPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopSelectionPageStateCopyWith<$Res> {
  factory $ShopSelectionPageStateCopyWith(ShopSelectionPageState value,
          $Res Function(ShopSelectionPageState) then) =
      _$ShopSelectionPageStateCopyWithImpl<$Res, ShopSelectionPageState>;
  @useResult
  $Res call(
      {List<ReceiptLocationsModel> visibleShops,
      String selectedMarkerId,
      String selectedShopCode,
      String selectedShopName,
      List<ReceiptLocationsModel> receiptPointInformationList,
      LatLng currentLatLng});
}

/// @nodoc
class _$ShopSelectionPageStateCopyWithImpl<$Res,
        $Val extends ShopSelectionPageState>
    implements $ShopSelectionPageStateCopyWith<$Res> {
  _$ShopSelectionPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visibleShops = null,
    Object? selectedMarkerId = null,
    Object? selectedShopCode = null,
    Object? selectedShopName = null,
    Object? receiptPointInformationList = null,
    Object? currentLatLng = null,
  }) {
    return _then(_value.copyWith(
      visibleShops: null == visibleShops
          ? _value.visibleShops
          : visibleShops // ignore: cast_nullable_to_non_nullable
              as List<ReceiptLocationsModel>,
      selectedMarkerId: null == selectedMarkerId
          ? _value.selectedMarkerId
          : selectedMarkerId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedShopCode: null == selectedShopCode
          ? _value.selectedShopCode
          : selectedShopCode // ignore: cast_nullable_to_non_nullable
              as String,
      selectedShopName: null == selectedShopName
          ? _value.selectedShopName
          : selectedShopName // ignore: cast_nullable_to_non_nullable
              as String,
      receiptPointInformationList: null == receiptPointInformationList
          ? _value.receiptPointInformationList
          : receiptPointInformationList // ignore: cast_nullable_to_non_nullable
              as List<ReceiptLocationsModel>,
      currentLatLng: null == currentLatLng
          ? _value.currentLatLng
          : currentLatLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShopSelectionPageStateCopyWith<$Res>
    implements $ShopSelectionPageStateCopyWith<$Res> {
  factory _$$_ShopSelectionPageStateCopyWith(_$_ShopSelectionPageState value,
          $Res Function(_$_ShopSelectionPageState) then) =
      __$$_ShopSelectionPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ReceiptLocationsModel> visibleShops,
      String selectedMarkerId,
      String selectedShopCode,
      String selectedShopName,
      List<ReceiptLocationsModel> receiptPointInformationList,
      LatLng currentLatLng});
}

/// @nodoc
class __$$_ShopSelectionPageStateCopyWithImpl<$Res>
    extends _$ShopSelectionPageStateCopyWithImpl<$Res,
        _$_ShopSelectionPageState>
    implements _$$_ShopSelectionPageStateCopyWith<$Res> {
  __$$_ShopSelectionPageStateCopyWithImpl(_$_ShopSelectionPageState _value,
      $Res Function(_$_ShopSelectionPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visibleShops = null,
    Object? selectedMarkerId = null,
    Object? selectedShopCode = null,
    Object? selectedShopName = null,
    Object? receiptPointInformationList = null,
    Object? currentLatLng = null,
  }) {
    return _then(_$_ShopSelectionPageState(
      visibleShops: null == visibleShops
          ? _value._visibleShops
          : visibleShops // ignore: cast_nullable_to_non_nullable
              as List<ReceiptLocationsModel>,
      selectedMarkerId: null == selectedMarkerId
          ? _value.selectedMarkerId
          : selectedMarkerId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedShopCode: null == selectedShopCode
          ? _value.selectedShopCode
          : selectedShopCode // ignore: cast_nullable_to_non_nullable
              as String,
      selectedShopName: null == selectedShopName
          ? _value.selectedShopName
          : selectedShopName // ignore: cast_nullable_to_non_nullable
              as String,
      receiptPointInformationList: null == receiptPointInformationList
          ? _value._receiptPointInformationList
          : receiptPointInformationList // ignore: cast_nullable_to_non_nullable
              as List<ReceiptLocationsModel>,
      currentLatLng: null == currentLatLng
          ? _value.currentLatLng
          : currentLatLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_ShopSelectionPageState implements _ShopSelectionPageState {
  const _$_ShopSelectionPageState(
      {final List<ReceiptLocationsModel> visibleShops =
          const <ReceiptLocationsModel>[],
      this.selectedMarkerId = '',
      this.selectedShopCode = '',
      this.selectedShopName = '',
      final List<ReceiptLocationsModel> receiptPointInformationList =
          const <ReceiptLocationsModel>[],
      this.currentLatLng = const LatLng(35.666149, 139.8042)})
      : _visibleShops = visibleShops,
        _receiptPointInformationList = receiptPointInformationList;

  final List<ReceiptLocationsModel> _visibleShops;
  @override
  @JsonKey()
  List<ReceiptLocationsModel> get visibleShops {
    if (_visibleShops is EqualUnmodifiableListView) return _visibleShops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_visibleShops);
  }

  @override
  @JsonKey()
  final String selectedMarkerId;
  @override
  @JsonKey()
  final String selectedShopCode;
  @override
  @JsonKey()
  final String selectedShopName;
  final List<ReceiptLocationsModel> _receiptPointInformationList;
  @override
  @JsonKey()
  List<ReceiptLocationsModel> get receiptPointInformationList {
    if (_receiptPointInformationList is EqualUnmodifiableListView)
      return _receiptPointInformationList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_receiptPointInformationList);
  }

// 万が一nullの場合は木場店の座標を表示
  @override
  @JsonKey()
  final LatLng currentLatLng;

  @override
  String toString() {
    return 'ShopSelectionPageState(visibleShops: $visibleShops, selectedMarkerId: $selectedMarkerId, selectedShopCode: $selectedShopCode, selectedShopName: $selectedShopName, receiptPointInformationList: $receiptPointInformationList, currentLatLng: $currentLatLng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopSelectionPageState &&
            const DeepCollectionEquality()
                .equals(other._visibleShops, _visibleShops) &&
            (identical(other.selectedMarkerId, selectedMarkerId) ||
                other.selectedMarkerId == selectedMarkerId) &&
            (identical(other.selectedShopCode, selectedShopCode) ||
                other.selectedShopCode == selectedShopCode) &&
            (identical(other.selectedShopName, selectedShopName) ||
                other.selectedShopName == selectedShopName) &&
            const DeepCollectionEquality().equals(
                other._receiptPointInformationList,
                _receiptPointInformationList) &&
            (identical(other.currentLatLng, currentLatLng) ||
                other.currentLatLng == currentLatLng));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_visibleShops),
      selectedMarkerId,
      selectedShopCode,
      selectedShopName,
      const DeepCollectionEquality().hash(_receiptPointInformationList),
      currentLatLng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopSelectionPageStateCopyWith<_$_ShopSelectionPageState> get copyWith =>
      __$$_ShopSelectionPageStateCopyWithImpl<_$_ShopSelectionPageState>(
          this, _$identity);
}

abstract class _ShopSelectionPageState implements ShopSelectionPageState {
  const factory _ShopSelectionPageState(
      {final List<ReceiptLocationsModel> visibleShops,
      final String selectedMarkerId,
      final String selectedShopCode,
      final String selectedShopName,
      final List<ReceiptLocationsModel> receiptPointInformationList,
      final LatLng currentLatLng}) = _$_ShopSelectionPageState;

  @override
  List<ReceiptLocationsModel> get visibleShops;
  @override
  String get selectedMarkerId;
  @override
  String get selectedShopCode;
  @override
  String get selectedShopName;
  @override
  List<ReceiptLocationsModel> get receiptPointInformationList;
  @override // 万が一nullの場合は木場店の座標を表示
  LatLng get currentLatLng;
  @override
  @JsonKey(ignore: true)
  _$$_ShopSelectionPageStateCopyWith<_$_ShopSelectionPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
