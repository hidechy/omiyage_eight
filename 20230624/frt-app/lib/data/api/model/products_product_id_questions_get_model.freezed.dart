// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_product_id_questions_get_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductsProductIdQuestionsGetModel _$ProductsProductIdQuestionsGetModelFromJson(
    Map<String, dynamic> json) {
  return _ProductsProductIdQuestionsGetModel.fromJson(json);
}

/// @nodoc
mixin _$ProductsProductIdQuestionsGetModel {
  MedicineQuestionModel? get medicineQuestion =>
      throw _privateConstructorUsedError;
  CounselingQuestionModel? get counselingQuestion =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsProductIdQuestionsGetModelCopyWith<
          ProductsProductIdQuestionsGetModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsProductIdQuestionsGetModelCopyWith<$Res> {
  factory $ProductsProductIdQuestionsGetModelCopyWith(
          ProductsProductIdQuestionsGetModel value,
          $Res Function(ProductsProductIdQuestionsGetModel) then) =
      _$ProductsProductIdQuestionsGetModelCopyWithImpl<$Res,
          ProductsProductIdQuestionsGetModel>;
  @useResult
  $Res call(
      {MedicineQuestionModel? medicineQuestion,
      CounselingQuestionModel? counselingQuestion});

  $MedicineQuestionModelCopyWith<$Res>? get medicineQuestion;
  $CounselingQuestionModelCopyWith<$Res>? get counselingQuestion;
}

/// @nodoc
class _$ProductsProductIdQuestionsGetModelCopyWithImpl<$Res,
        $Val extends ProductsProductIdQuestionsGetModel>
    implements $ProductsProductIdQuestionsGetModelCopyWith<$Res> {
  _$ProductsProductIdQuestionsGetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicineQuestion = freezed,
    Object? counselingQuestion = freezed,
  }) {
    return _then(_value.copyWith(
      medicineQuestion: freezed == medicineQuestion
          ? _value.medicineQuestion
          : medicineQuestion // ignore: cast_nullable_to_non_nullable
              as MedicineQuestionModel?,
      counselingQuestion: freezed == counselingQuestion
          ? _value.counselingQuestion
          : counselingQuestion // ignore: cast_nullable_to_non_nullable
              as CounselingQuestionModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MedicineQuestionModelCopyWith<$Res>? get medicineQuestion {
    if (_value.medicineQuestion == null) {
      return null;
    }

    return $MedicineQuestionModelCopyWith<$Res>(_value.medicineQuestion!,
        (value) {
      return _then(_value.copyWith(medicineQuestion: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CounselingQuestionModelCopyWith<$Res>? get counselingQuestion {
    if (_value.counselingQuestion == null) {
      return null;
    }

    return $CounselingQuestionModelCopyWith<$Res>(_value.counselingQuestion!,
        (value) {
      return _then(_value.copyWith(counselingQuestion: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductsProductIdQuestionsGetModelCopyWith<$Res>
    implements $ProductsProductIdQuestionsGetModelCopyWith<$Res> {
  factory _$$_ProductsProductIdQuestionsGetModelCopyWith(
          _$_ProductsProductIdQuestionsGetModel value,
          $Res Function(_$_ProductsProductIdQuestionsGetModel) then) =
      __$$_ProductsProductIdQuestionsGetModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MedicineQuestionModel? medicineQuestion,
      CounselingQuestionModel? counselingQuestion});

  @override
  $MedicineQuestionModelCopyWith<$Res>? get medicineQuestion;
  @override
  $CounselingQuestionModelCopyWith<$Res>? get counselingQuestion;
}

/// @nodoc
class __$$_ProductsProductIdQuestionsGetModelCopyWithImpl<$Res>
    extends _$ProductsProductIdQuestionsGetModelCopyWithImpl<$Res,
        _$_ProductsProductIdQuestionsGetModel>
    implements _$$_ProductsProductIdQuestionsGetModelCopyWith<$Res> {
  __$$_ProductsProductIdQuestionsGetModelCopyWithImpl(
      _$_ProductsProductIdQuestionsGetModel _value,
      $Res Function(_$_ProductsProductIdQuestionsGetModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicineQuestion = freezed,
    Object? counselingQuestion = freezed,
  }) {
    return _then(_$_ProductsProductIdQuestionsGetModel(
      medicineQuestion: freezed == medicineQuestion
          ? _value.medicineQuestion
          : medicineQuestion // ignore: cast_nullable_to_non_nullable
              as MedicineQuestionModel?,
      counselingQuestion: freezed == counselingQuestion
          ? _value.counselingQuestion
          : counselingQuestion // ignore: cast_nullable_to_non_nullable
              as CounselingQuestionModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductsProductIdQuestionsGetModel
    implements _ProductsProductIdQuestionsGetModel {
  const _$_ProductsProductIdQuestionsGetModel(
      {this.medicineQuestion, this.counselingQuestion});

  factory _$_ProductsProductIdQuestionsGetModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_ProductsProductIdQuestionsGetModelFromJson(json);

  @override
  final MedicineQuestionModel? medicineQuestion;
  @override
  final CounselingQuestionModel? counselingQuestion;

  @override
  String toString() {
    return 'ProductsProductIdQuestionsGetModel(medicineQuestion: $medicineQuestion, counselingQuestion: $counselingQuestion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsProductIdQuestionsGetModel &&
            (identical(other.medicineQuestion, medicineQuestion) ||
                other.medicineQuestion == medicineQuestion) &&
            (identical(other.counselingQuestion, counselingQuestion) ||
                other.counselingQuestion == counselingQuestion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, medicineQuestion, counselingQuestion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductsProductIdQuestionsGetModelCopyWith<
          _$_ProductsProductIdQuestionsGetModel>
      get copyWith => __$$_ProductsProductIdQuestionsGetModelCopyWithImpl<
          _$_ProductsProductIdQuestionsGetModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductsProductIdQuestionsGetModelToJson(
      this,
    );
  }
}

abstract class _ProductsProductIdQuestionsGetModel
    implements ProductsProductIdQuestionsGetModel {
  const factory _ProductsProductIdQuestionsGetModel(
          {final MedicineQuestionModel? medicineQuestion,
          final CounselingQuestionModel? counselingQuestion}) =
      _$_ProductsProductIdQuestionsGetModel;

  factory _ProductsProductIdQuestionsGetModel.fromJson(
          Map<String, dynamic> json) =
      _$_ProductsProductIdQuestionsGetModel.fromJson;

  @override
  MedicineQuestionModel? get medicineQuestion;
  @override
  CounselingQuestionModel? get counselingQuestion;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsProductIdQuestionsGetModelCopyWith<
          _$_ProductsProductIdQuestionsGetModel>
      get copyWith => throw _privateConstructorUsedError;
}
