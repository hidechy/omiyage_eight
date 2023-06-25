// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medicine_checksheet_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MedicineChecksheetQuestionModel _$MedicineChecksheetQuestionModelFromJson(
    Map<String, dynamic> json) {
  return _MedicineChecksheetQuestionModel.fromJson(json);
}

/// @nodoc
mixin _$MedicineChecksheetQuestionModel {
/* チェックボックス表示判定 ``` true：表示する false：表示しない ``` */
  bool get isDisplayMedicineBuyCheck =>
      throw _privateConstructorUsedError; /* 医薬品設問 */
  String get medicineQuestion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicineChecksheetQuestionModelCopyWith<MedicineChecksheetQuestionModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicineChecksheetQuestionModelCopyWith<$Res> {
  factory $MedicineChecksheetQuestionModelCopyWith(
          MedicineChecksheetQuestionModel value,
          $Res Function(MedicineChecksheetQuestionModel) then) =
      _$MedicineChecksheetQuestionModelCopyWithImpl<$Res,
          MedicineChecksheetQuestionModel>;
  @useResult
  $Res call({bool isDisplayMedicineBuyCheck, String medicineQuestion});
}

/// @nodoc
class _$MedicineChecksheetQuestionModelCopyWithImpl<$Res,
        $Val extends MedicineChecksheetQuestionModel>
    implements $MedicineChecksheetQuestionModelCopyWith<$Res> {
  _$MedicineChecksheetQuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDisplayMedicineBuyCheck = null,
    Object? medicineQuestion = null,
  }) {
    return _then(_value.copyWith(
      isDisplayMedicineBuyCheck: null == isDisplayMedicineBuyCheck
          ? _value.isDisplayMedicineBuyCheck
          : isDisplayMedicineBuyCheck // ignore: cast_nullable_to_non_nullable
              as bool,
      medicineQuestion: null == medicineQuestion
          ? _value.medicineQuestion
          : medicineQuestion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MedicineChecksheetQuestionModelCopyWith<$Res>
    implements $MedicineChecksheetQuestionModelCopyWith<$Res> {
  factory _$$_MedicineChecksheetQuestionModelCopyWith(
          _$_MedicineChecksheetQuestionModel value,
          $Res Function(_$_MedicineChecksheetQuestionModel) then) =
      __$$_MedicineChecksheetQuestionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDisplayMedicineBuyCheck, String medicineQuestion});
}

/// @nodoc
class __$$_MedicineChecksheetQuestionModelCopyWithImpl<$Res>
    extends _$MedicineChecksheetQuestionModelCopyWithImpl<$Res,
        _$_MedicineChecksheetQuestionModel>
    implements _$$_MedicineChecksheetQuestionModelCopyWith<$Res> {
  __$$_MedicineChecksheetQuestionModelCopyWithImpl(
      _$_MedicineChecksheetQuestionModel _value,
      $Res Function(_$_MedicineChecksheetQuestionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDisplayMedicineBuyCheck = null,
    Object? medicineQuestion = null,
  }) {
    return _then(_$_MedicineChecksheetQuestionModel(
      isDisplayMedicineBuyCheck: null == isDisplayMedicineBuyCheck
          ? _value.isDisplayMedicineBuyCheck
          : isDisplayMedicineBuyCheck // ignore: cast_nullable_to_non_nullable
              as bool,
      medicineQuestion: null == medicineQuestion
          ? _value.medicineQuestion
          : medicineQuestion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MedicineChecksheetQuestionModel
    implements _MedicineChecksheetQuestionModel {
  const _$_MedicineChecksheetQuestionModel(
      {this.isDisplayMedicineBuyCheck = false, this.medicineQuestion = ''});

  factory _$_MedicineChecksheetQuestionModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_MedicineChecksheetQuestionModelFromJson(json);

/* チェックボックス表示判定 ``` true：表示する false：表示しない ``` */
  @override
  @JsonKey()
  final bool isDisplayMedicineBuyCheck;
/* 医薬品設問 */
  @override
  @JsonKey()
  final String medicineQuestion;

  @override
  String toString() {
    return 'MedicineChecksheetQuestionModel(isDisplayMedicineBuyCheck: $isDisplayMedicineBuyCheck, medicineQuestion: $medicineQuestion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicineChecksheetQuestionModel &&
            (identical(other.isDisplayMedicineBuyCheck,
                    isDisplayMedicineBuyCheck) ||
                other.isDisplayMedicineBuyCheck == isDisplayMedicineBuyCheck) &&
            (identical(other.medicineQuestion, medicineQuestion) ||
                other.medicineQuestion == medicineQuestion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isDisplayMedicineBuyCheck, medicineQuestion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MedicineChecksheetQuestionModelCopyWith<
          _$_MedicineChecksheetQuestionModel>
      get copyWith => __$$_MedicineChecksheetQuestionModelCopyWithImpl<
          _$_MedicineChecksheetQuestionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicineChecksheetQuestionModelToJson(
      this,
    );
  }
}

abstract class _MedicineChecksheetQuestionModel
    implements MedicineChecksheetQuestionModel {
  const factory _MedicineChecksheetQuestionModel(
      {final bool isDisplayMedicineBuyCheck,
      final String medicineQuestion}) = _$_MedicineChecksheetQuestionModel;

  factory _MedicineChecksheetQuestionModel.fromJson(Map<String, dynamic> json) =
      _$_MedicineChecksheetQuestionModel.fromJson;

  @override /* チェックボックス表示判定 ``` true：表示する false：表示しない ``` */
  bool get isDisplayMedicineBuyCheck;
  @override /* 医薬品設問 */
  String get medicineQuestion;
  @override
  @JsonKey(ignore: true)
  _$$_MedicineChecksheetQuestionModelCopyWith<
          _$_MedicineChecksheetQuestionModel>
      get copyWith => throw _privateConstructorUsedError;
}
