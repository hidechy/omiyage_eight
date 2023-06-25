// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_category_tab_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainCategoryTabPageState {
  bool get isOpen => throw _privateConstructorUsedError;
  List<CategorySummaryModel> get categorySummaryModel =>
      throw _privateConstructorUsedError;
  ProductsCategorySummaryLoadingStatus
      get productsCategorySummaryLoadingStatus =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainCategoryTabPageStateCopyWith<MainCategoryTabPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainCategoryTabPageStateCopyWith<$Res> {
  factory $MainCategoryTabPageStateCopyWith(MainCategoryTabPageState value,
          $Res Function(MainCategoryTabPageState) then) =
      _$MainCategoryTabPageStateCopyWithImpl<$Res, MainCategoryTabPageState>;
  @useResult
  $Res call(
      {bool isOpen,
      List<CategorySummaryModel> categorySummaryModel,
      ProductsCategorySummaryLoadingStatus
          productsCategorySummaryLoadingStatus});
}

/// @nodoc
class _$MainCategoryTabPageStateCopyWithImpl<$Res,
        $Val extends MainCategoryTabPageState>
    implements $MainCategoryTabPageStateCopyWith<$Res> {
  _$MainCategoryTabPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpen = null,
    Object? categorySummaryModel = null,
    Object? productsCategorySummaryLoadingStatus = null,
  }) {
    return _then(_value.copyWith(
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      categorySummaryModel: null == categorySummaryModel
          ? _value.categorySummaryModel
          : categorySummaryModel // ignore: cast_nullable_to_non_nullable
              as List<CategorySummaryModel>,
      productsCategorySummaryLoadingStatus: null ==
              productsCategorySummaryLoadingStatus
          ? _value.productsCategorySummaryLoadingStatus
          : productsCategorySummaryLoadingStatus // ignore: cast_nullable_to_non_nullable
              as ProductsCategorySummaryLoadingStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainCategoryTabPageStateCopyWith<$Res>
    implements $MainCategoryTabPageStateCopyWith<$Res> {
  factory _$$_MainCategoryTabPageStateCopyWith(
          _$_MainCategoryTabPageState value,
          $Res Function(_$_MainCategoryTabPageState) then) =
      __$$_MainCategoryTabPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isOpen,
      List<CategorySummaryModel> categorySummaryModel,
      ProductsCategorySummaryLoadingStatus
          productsCategorySummaryLoadingStatus});
}

/// @nodoc
class __$$_MainCategoryTabPageStateCopyWithImpl<$Res>
    extends _$MainCategoryTabPageStateCopyWithImpl<$Res,
        _$_MainCategoryTabPageState>
    implements _$$_MainCategoryTabPageStateCopyWith<$Res> {
  __$$_MainCategoryTabPageStateCopyWithImpl(_$_MainCategoryTabPageState _value,
      $Res Function(_$_MainCategoryTabPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpen = null,
    Object? categorySummaryModel = null,
    Object? productsCategorySummaryLoadingStatus = null,
  }) {
    return _then(_$_MainCategoryTabPageState(
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      categorySummaryModel: null == categorySummaryModel
          ? _value._categorySummaryModel
          : categorySummaryModel // ignore: cast_nullable_to_non_nullable
              as List<CategorySummaryModel>,
      productsCategorySummaryLoadingStatus: null ==
              productsCategorySummaryLoadingStatus
          ? _value.productsCategorySummaryLoadingStatus
          : productsCategorySummaryLoadingStatus // ignore: cast_nullable_to_non_nullable
              as ProductsCategorySummaryLoadingStatus,
    ));
  }
}

/// @nodoc

class _$_MainCategoryTabPageState implements _MainCategoryTabPageState {
  _$_MainCategoryTabPageState(
      {this.isOpen = false,
      final List<CategorySummaryModel> categorySummaryModel =
          const <CategorySummaryModel>[],
      this.productsCategorySummaryLoadingStatus =
          ProductsCategorySummaryLoadingStatus.initialLoading})
      : _categorySummaryModel = categorySummaryModel;

  @override
  @JsonKey()
  final bool isOpen;
  final List<CategorySummaryModel> _categorySummaryModel;
  @override
  @JsonKey()
  List<CategorySummaryModel> get categorySummaryModel {
    if (_categorySummaryModel is EqualUnmodifiableListView)
      return _categorySummaryModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categorySummaryModel);
  }

  @override
  @JsonKey()
  final ProductsCategorySummaryLoadingStatus
      productsCategorySummaryLoadingStatus;

  @override
  String toString() {
    return 'MainCategoryTabPageState(isOpen: $isOpen, categorySummaryModel: $categorySummaryModel, productsCategorySummaryLoadingStatus: $productsCategorySummaryLoadingStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainCategoryTabPageState &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen) &&
            const DeepCollectionEquality()
                .equals(other._categorySummaryModel, _categorySummaryModel) &&
            (identical(other.productsCategorySummaryLoadingStatus,
                    productsCategorySummaryLoadingStatus) ||
                other.productsCategorySummaryLoadingStatus ==
                    productsCategorySummaryLoadingStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isOpen,
      const DeepCollectionEquality().hash(_categorySummaryModel),
      productsCategorySummaryLoadingStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainCategoryTabPageStateCopyWith<_$_MainCategoryTabPageState>
      get copyWith => __$$_MainCategoryTabPageStateCopyWithImpl<
          _$_MainCategoryTabPageState>(this, _$identity);
}

abstract class _MainCategoryTabPageState implements MainCategoryTabPageState {
  factory _MainCategoryTabPageState(
      {final bool isOpen,
      final List<CategorySummaryModel> categorySummaryModel,
      final ProductsCategorySummaryLoadingStatus
          productsCategorySummaryLoadingStatus}) = _$_MainCategoryTabPageState;

  @override
  bool get isOpen;
  @override
  List<CategorySummaryModel> get categorySummaryModel;
  @override
  ProductsCategorySummaryLoadingStatus get productsCategorySummaryLoadingStatus;
  @override
  @JsonKey(ignore: true)
  _$$_MainCategoryTabPageStateCopyWith<_$_MainCategoryTabPageState>
      get copyWith => throw _privateConstructorUsedError;
}
