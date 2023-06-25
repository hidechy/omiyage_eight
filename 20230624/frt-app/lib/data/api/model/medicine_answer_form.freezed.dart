// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medicine_answer_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MedicineAnswerForm _$MedicineAnswerFormFromJson(Map<String, dynamic> json) {
  return _MedicineAnswerForm.fromJson(json);
}

/// @nodoc
mixin _$MedicineAnswerForm {
/* 別使用者フラグ  ``` \"0\"：OFF \"1\"：ON ``` */
  @StringToBooleanConverter()
  bool get anotherUserFlag => throw _privateConstructorUsedError; /* 使用者年齢 */
  String? get userAge =>
      throw _privateConstructorUsedError; /* 使用者性別 ``` \"0\"：男性 \"1\"：女性 ``` */
  Gender? get userGender =>
      throw _privateConstructorUsedError; /* 効能効果該当なしフラグ  ``` \"0\"：OFF \"1\"：ON ``` */
  @StringToBooleanConverter()
  bool get noEffectFlag =>
      throw _privateConstructorUsedError; /* 妊娠中フラグ ``` \"0\"：OFF \"1\"：ON ``` */
  @StringToBooleanConverter()
  bool get pregnancyFlag => throw _privateConstructorUsedError; /* 妊娠週数 */
  String? get pregnancyWeek =>
      throw _privateConstructorUsedError; /* 授乳中フラグ  ``` \"0\"：OFF \"1\"：ON ``` */
  @StringToBooleanConverter()
  bool get lactationFlag =>
      throw _privateConstructorUsedError; /* 併用医療機関／医薬品ありフラグ ``` \"0\"：OFF \"1\"：ON ``` */
  @StringToBooleanConverter()
  bool get examinationsFlag =>
      throw _privateConstructorUsedError; /* 初使用フラグ  ``` \"0\"：OFF \"1\"：ON ``` */
  @StringToBooleanConverter()
  bool get firstUseFlag =>
      throw _privateConstructorUsedError; /* この薬品での副作用経歴ありフラグ  ``` \"0\"：OFF \"1\"：ON ``` */
  @StringToBooleanConverter()
  bool get thisDrugSideEffectFlag =>
      throw _privateConstructorUsedError; /* 他医薬品副作用経歴ありフラグ  ``` \"0\"：OFF \"1\"：ON ``` */
  @StringToBooleanConverter()
  bool get sideEffectFlag =>
      throw _privateConstructorUsedError; /* 長期継続使用中フラグ  ``` \"0\"：OFF \"1\"：ON ``` */
  @StringToBooleanConverter()
  bool get exceedingFlag => throw _privateConstructorUsedError; /* 記入欄 */
  String? get otherAnswer =>
      throw _privateConstructorUsedError; /* 乱用抑止医薬品-買い置きありフラグ  ``` \"0\"：OFF \"1\"：ON ``` */
  @StringToBooleanConverter()
  bool get drugStockFlag =>
      throw _privateConstructorUsedError; /* 乱用抑止医薬品-別目的あり  ``` \"0\"：OFF \"1\"：ON ``` */
  @StringToBooleanConverter()
  bool get otherPurposeFlag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicineAnswerFormCopyWith<MedicineAnswerForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicineAnswerFormCopyWith<$Res> {
  factory $MedicineAnswerFormCopyWith(
          MedicineAnswerForm value, $Res Function(MedicineAnswerForm) then) =
      _$MedicineAnswerFormCopyWithImpl<$Res, MedicineAnswerForm>;
  @useResult
  $Res call(
      {@StringToBooleanConverter() bool anotherUserFlag,
      String? userAge,
      Gender? userGender,
      @StringToBooleanConverter() bool noEffectFlag,
      @StringToBooleanConverter() bool pregnancyFlag,
      String? pregnancyWeek,
      @StringToBooleanConverter() bool lactationFlag,
      @StringToBooleanConverter() bool examinationsFlag,
      @StringToBooleanConverter() bool firstUseFlag,
      @StringToBooleanConverter() bool thisDrugSideEffectFlag,
      @StringToBooleanConverter() bool sideEffectFlag,
      @StringToBooleanConverter() bool exceedingFlag,
      String? otherAnswer,
      @StringToBooleanConverter() bool drugStockFlag,
      @StringToBooleanConverter() bool otherPurposeFlag});
}

/// @nodoc
class _$MedicineAnswerFormCopyWithImpl<$Res, $Val extends MedicineAnswerForm>
    implements $MedicineAnswerFormCopyWith<$Res> {
  _$MedicineAnswerFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anotherUserFlag = null,
    Object? userAge = freezed,
    Object? userGender = freezed,
    Object? noEffectFlag = null,
    Object? pregnancyFlag = null,
    Object? pregnancyWeek = freezed,
    Object? lactationFlag = null,
    Object? examinationsFlag = null,
    Object? firstUseFlag = null,
    Object? thisDrugSideEffectFlag = null,
    Object? sideEffectFlag = null,
    Object? exceedingFlag = null,
    Object? otherAnswer = freezed,
    Object? drugStockFlag = null,
    Object? otherPurposeFlag = null,
  }) {
    return _then(_value.copyWith(
      anotherUserFlag: null == anotherUserFlag
          ? _value.anotherUserFlag
          : anotherUserFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      userAge: freezed == userAge
          ? _value.userAge
          : userAge // ignore: cast_nullable_to_non_nullable
              as String?,
      userGender: freezed == userGender
          ? _value.userGender
          : userGender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      noEffectFlag: null == noEffectFlag
          ? _value.noEffectFlag
          : noEffectFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      pregnancyFlag: null == pregnancyFlag
          ? _value.pregnancyFlag
          : pregnancyFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      pregnancyWeek: freezed == pregnancyWeek
          ? _value.pregnancyWeek
          : pregnancyWeek // ignore: cast_nullable_to_non_nullable
              as String?,
      lactationFlag: null == lactationFlag
          ? _value.lactationFlag
          : lactationFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      examinationsFlag: null == examinationsFlag
          ? _value.examinationsFlag
          : examinationsFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      firstUseFlag: null == firstUseFlag
          ? _value.firstUseFlag
          : firstUseFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      thisDrugSideEffectFlag: null == thisDrugSideEffectFlag
          ? _value.thisDrugSideEffectFlag
          : thisDrugSideEffectFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      sideEffectFlag: null == sideEffectFlag
          ? _value.sideEffectFlag
          : sideEffectFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      exceedingFlag: null == exceedingFlag
          ? _value.exceedingFlag
          : exceedingFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      otherAnswer: freezed == otherAnswer
          ? _value.otherAnswer
          : otherAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      drugStockFlag: null == drugStockFlag
          ? _value.drugStockFlag
          : drugStockFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      otherPurposeFlag: null == otherPurposeFlag
          ? _value.otherPurposeFlag
          : otherPurposeFlag // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MedicineAnswerFormCopyWith<$Res>
    implements $MedicineAnswerFormCopyWith<$Res> {
  factory _$$_MedicineAnswerFormCopyWith(_$_MedicineAnswerForm value,
          $Res Function(_$_MedicineAnswerForm) then) =
      __$$_MedicineAnswerFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@StringToBooleanConverter() bool anotherUserFlag,
      String? userAge,
      Gender? userGender,
      @StringToBooleanConverter() bool noEffectFlag,
      @StringToBooleanConverter() bool pregnancyFlag,
      String? pregnancyWeek,
      @StringToBooleanConverter() bool lactationFlag,
      @StringToBooleanConverter() bool examinationsFlag,
      @StringToBooleanConverter() bool firstUseFlag,
      @StringToBooleanConverter() bool thisDrugSideEffectFlag,
      @StringToBooleanConverter() bool sideEffectFlag,
      @StringToBooleanConverter() bool exceedingFlag,
      String? otherAnswer,
      @StringToBooleanConverter() bool drugStockFlag,
      @StringToBooleanConverter() bool otherPurposeFlag});
}

/// @nodoc
class __$$_MedicineAnswerFormCopyWithImpl<$Res>
    extends _$MedicineAnswerFormCopyWithImpl<$Res, _$_MedicineAnswerForm>
    implements _$$_MedicineAnswerFormCopyWith<$Res> {
  __$$_MedicineAnswerFormCopyWithImpl(
      _$_MedicineAnswerForm _value, $Res Function(_$_MedicineAnswerForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anotherUserFlag = null,
    Object? userAge = freezed,
    Object? userGender = freezed,
    Object? noEffectFlag = null,
    Object? pregnancyFlag = null,
    Object? pregnancyWeek = freezed,
    Object? lactationFlag = null,
    Object? examinationsFlag = null,
    Object? firstUseFlag = null,
    Object? thisDrugSideEffectFlag = null,
    Object? sideEffectFlag = null,
    Object? exceedingFlag = null,
    Object? otherAnswer = freezed,
    Object? drugStockFlag = null,
    Object? otherPurposeFlag = null,
  }) {
    return _then(_$_MedicineAnswerForm(
      anotherUserFlag: null == anotherUserFlag
          ? _value.anotherUserFlag
          : anotherUserFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      userAge: freezed == userAge
          ? _value.userAge
          : userAge // ignore: cast_nullable_to_non_nullable
              as String?,
      userGender: freezed == userGender
          ? _value.userGender
          : userGender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      noEffectFlag: null == noEffectFlag
          ? _value.noEffectFlag
          : noEffectFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      pregnancyFlag: null == pregnancyFlag
          ? _value.pregnancyFlag
          : pregnancyFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      pregnancyWeek: freezed == pregnancyWeek
          ? _value.pregnancyWeek
          : pregnancyWeek // ignore: cast_nullable_to_non_nullable
              as String?,
      lactationFlag: null == lactationFlag
          ? _value.lactationFlag
          : lactationFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      examinationsFlag: null == examinationsFlag
          ? _value.examinationsFlag
          : examinationsFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      firstUseFlag: null == firstUseFlag
          ? _value.firstUseFlag
          : firstUseFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      thisDrugSideEffectFlag: null == thisDrugSideEffectFlag
          ? _value.thisDrugSideEffectFlag
          : thisDrugSideEffectFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      sideEffectFlag: null == sideEffectFlag
          ? _value.sideEffectFlag
          : sideEffectFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      exceedingFlag: null == exceedingFlag
          ? _value.exceedingFlag
          : exceedingFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      otherAnswer: freezed == otherAnswer
          ? _value.otherAnswer
          : otherAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      drugStockFlag: null == drugStockFlag
          ? _value.drugStockFlag
          : drugStockFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      otherPurposeFlag: null == otherPurposeFlag
          ? _value.otherPurposeFlag
          : otherPurposeFlag // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MedicineAnswerForm implements _MedicineAnswerForm {
  const _$_MedicineAnswerForm(
      {@StringToBooleanConverter() this.anotherUserFlag = false,
      this.userAge,
      this.userGender,
      @StringToBooleanConverter() this.noEffectFlag = false,
      @StringToBooleanConverter() this.pregnancyFlag = false,
      this.pregnancyWeek,
      @StringToBooleanConverter() this.lactationFlag = false,
      @StringToBooleanConverter() this.examinationsFlag = false,
      @StringToBooleanConverter() this.firstUseFlag = false,
      @StringToBooleanConverter() this.thisDrugSideEffectFlag = false,
      @StringToBooleanConverter() this.sideEffectFlag = false,
      @StringToBooleanConverter() this.exceedingFlag = false,
      this.otherAnswer,
      @StringToBooleanConverter() this.drugStockFlag = false,
      @StringToBooleanConverter() this.otherPurposeFlag = false});

  factory _$_MedicineAnswerForm.fromJson(Map<String, dynamic> json) =>
      _$$_MedicineAnswerFormFromJson(json);

/* 別使用者フラグ  ``` \"0\"：OFF \"1\"：ON ``` */
  @override
  @JsonKey()
  @StringToBooleanConverter()
  final bool anotherUserFlag;
/* 使用者年齢 */
  @override
  final String? userAge;
/* 使用者性別 ``` \"0\"：男性 \"1\"：女性 ``` */
  @override
  final Gender? userGender;
/* 効能効果該当なしフラグ  ``` \"0\"：OFF \"1\"：ON ``` */
  @override
  @JsonKey()
  @StringToBooleanConverter()
  final bool noEffectFlag;
/* 妊娠中フラグ ``` \"0\"：OFF \"1\"：ON ``` */
  @override
  @JsonKey()
  @StringToBooleanConverter()
  final bool pregnancyFlag;
/* 妊娠週数 */
  @override
  final String? pregnancyWeek;
/* 授乳中フラグ  ``` \"0\"：OFF \"1\"：ON ``` */
  @override
  @JsonKey()
  @StringToBooleanConverter()
  final bool lactationFlag;
/* 併用医療機関／医薬品ありフラグ ``` \"0\"：OFF \"1\"：ON ``` */
  @override
  @JsonKey()
  @StringToBooleanConverter()
  final bool examinationsFlag;
/* 初使用フラグ  ``` \"0\"：OFF \"1\"：ON ``` */
  @override
  @JsonKey()
  @StringToBooleanConverter()
  final bool firstUseFlag;
/* この薬品での副作用経歴ありフラグ  ``` \"0\"：OFF \"1\"：ON ``` */
  @override
  @JsonKey()
  @StringToBooleanConverter()
  final bool thisDrugSideEffectFlag;
/* 他医薬品副作用経歴ありフラグ  ``` \"0\"：OFF \"1\"：ON ``` */
  @override
  @JsonKey()
  @StringToBooleanConverter()
  final bool sideEffectFlag;
/* 長期継続使用中フラグ  ``` \"0\"：OFF \"1\"：ON ``` */
  @override
  @JsonKey()
  @StringToBooleanConverter()
  final bool exceedingFlag;
/* 記入欄 */
  @override
  final String? otherAnswer;
/* 乱用抑止医薬品-買い置きありフラグ  ``` \"0\"：OFF \"1\"：ON ``` */
  @override
  @JsonKey()
  @StringToBooleanConverter()
  final bool drugStockFlag;
/* 乱用抑止医薬品-別目的あり  ``` \"0\"：OFF \"1\"：ON ``` */
  @override
  @JsonKey()
  @StringToBooleanConverter()
  final bool otherPurposeFlag;

  @override
  String toString() {
    return 'MedicineAnswerForm(anotherUserFlag: $anotherUserFlag, userAge: $userAge, userGender: $userGender, noEffectFlag: $noEffectFlag, pregnancyFlag: $pregnancyFlag, pregnancyWeek: $pregnancyWeek, lactationFlag: $lactationFlag, examinationsFlag: $examinationsFlag, firstUseFlag: $firstUseFlag, thisDrugSideEffectFlag: $thisDrugSideEffectFlag, sideEffectFlag: $sideEffectFlag, exceedingFlag: $exceedingFlag, otherAnswer: $otherAnswer, drugStockFlag: $drugStockFlag, otherPurposeFlag: $otherPurposeFlag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicineAnswerForm &&
            (identical(other.anotherUserFlag, anotherUserFlag) ||
                other.anotherUserFlag == anotherUserFlag) &&
            (identical(other.userAge, userAge) || other.userAge == userAge) &&
            (identical(other.userGender, userGender) ||
                other.userGender == userGender) &&
            (identical(other.noEffectFlag, noEffectFlag) ||
                other.noEffectFlag == noEffectFlag) &&
            (identical(other.pregnancyFlag, pregnancyFlag) ||
                other.pregnancyFlag == pregnancyFlag) &&
            (identical(other.pregnancyWeek, pregnancyWeek) ||
                other.pregnancyWeek == pregnancyWeek) &&
            (identical(other.lactationFlag, lactationFlag) ||
                other.lactationFlag == lactationFlag) &&
            (identical(other.examinationsFlag, examinationsFlag) ||
                other.examinationsFlag == examinationsFlag) &&
            (identical(other.firstUseFlag, firstUseFlag) ||
                other.firstUseFlag == firstUseFlag) &&
            (identical(other.thisDrugSideEffectFlag, thisDrugSideEffectFlag) ||
                other.thisDrugSideEffectFlag == thisDrugSideEffectFlag) &&
            (identical(other.sideEffectFlag, sideEffectFlag) ||
                other.sideEffectFlag == sideEffectFlag) &&
            (identical(other.exceedingFlag, exceedingFlag) ||
                other.exceedingFlag == exceedingFlag) &&
            (identical(other.otherAnswer, otherAnswer) ||
                other.otherAnswer == otherAnswer) &&
            (identical(other.drugStockFlag, drugStockFlag) ||
                other.drugStockFlag == drugStockFlag) &&
            (identical(other.otherPurposeFlag, otherPurposeFlag) ||
                other.otherPurposeFlag == otherPurposeFlag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      anotherUserFlag,
      userAge,
      userGender,
      noEffectFlag,
      pregnancyFlag,
      pregnancyWeek,
      lactationFlag,
      examinationsFlag,
      firstUseFlag,
      thisDrugSideEffectFlag,
      sideEffectFlag,
      exceedingFlag,
      otherAnswer,
      drugStockFlag,
      otherPurposeFlag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MedicineAnswerFormCopyWith<_$_MedicineAnswerForm> get copyWith =>
      __$$_MedicineAnswerFormCopyWithImpl<_$_MedicineAnswerForm>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicineAnswerFormToJson(
      this,
    );
  }
}

abstract class _MedicineAnswerForm implements MedicineAnswerForm {
  const factory _MedicineAnswerForm(
          {@StringToBooleanConverter() final bool anotherUserFlag,
          final String? userAge,
          final Gender? userGender,
          @StringToBooleanConverter() final bool noEffectFlag,
          @StringToBooleanConverter() final bool pregnancyFlag,
          final String? pregnancyWeek,
          @StringToBooleanConverter() final bool lactationFlag,
          @StringToBooleanConverter() final bool examinationsFlag,
          @StringToBooleanConverter() final bool firstUseFlag,
          @StringToBooleanConverter() final bool thisDrugSideEffectFlag,
          @StringToBooleanConverter() final bool sideEffectFlag,
          @StringToBooleanConverter() final bool exceedingFlag,
          final String? otherAnswer,
          @StringToBooleanConverter() final bool drugStockFlag,
          @StringToBooleanConverter() final bool otherPurposeFlag}) =
      _$_MedicineAnswerForm;

  factory _MedicineAnswerForm.fromJson(Map<String, dynamic> json) =
      _$_MedicineAnswerForm.fromJson;

  @override /* 別使用者フラグ  ``` \"0\"：OFF \"1\"：ON ``` */
  @StringToBooleanConverter()
  bool get anotherUserFlag;
  @override /* 使用者年齢 */
  String? get userAge;
  @override /* 使用者性別 ``` \"0\"：男性 \"1\"：女性 ``` */
  Gender? get userGender;
  @override /* 効能効果該当なしフラグ  ``` \"0\"：OFF \"1\"：ON ``` */
  @StringToBooleanConverter()
  bool get noEffectFlag;
  @override /* 妊娠中フラグ ``` \"0\"：OFF \"1\"：ON ``` */
  @StringToBooleanConverter()
  bool get pregnancyFlag;
  @override /* 妊娠週数 */
  String? get pregnancyWeek;
  @override /* 授乳中フラグ  ``` \"0\"：OFF \"1\"：ON ``` */
  @StringToBooleanConverter()
  bool get lactationFlag;
  @override /* 併用医療機関／医薬品ありフラグ ``` \"0\"：OFF \"1\"：ON ``` */
  @StringToBooleanConverter()
  bool get examinationsFlag;
  @override /* 初使用フラグ  ``` \"0\"：OFF \"1\"：ON ``` */
  @StringToBooleanConverter()
  bool get firstUseFlag;
  @override /* この薬品での副作用経歴ありフラグ  ``` \"0\"：OFF \"1\"：ON ``` */
  @StringToBooleanConverter()
  bool get thisDrugSideEffectFlag;
  @override /* 他医薬品副作用経歴ありフラグ  ``` \"0\"：OFF \"1\"：ON ``` */
  @StringToBooleanConverter()
  bool get sideEffectFlag;
  @override /* 長期継続使用中フラグ  ``` \"0\"：OFF \"1\"：ON ``` */
  @StringToBooleanConverter()
  bool get exceedingFlag;
  @override /* 記入欄 */
  String? get otherAnswer;
  @override /* 乱用抑止医薬品-買い置きありフラグ  ``` \"0\"：OFF \"1\"：ON ``` */
  @StringToBooleanConverter()
  bool get drugStockFlag;
  @override /* 乱用抑止医薬品-別目的あり  ``` \"0\"：OFF \"1\"：ON ``` */
  @StringToBooleanConverter()
  bool get otherPurposeFlag;
  @override
  @JsonKey(ignore: true)
  _$$_MedicineAnswerFormCopyWith<_$_MedicineAnswerForm> get copyWith =>
      throw _privateConstructorUsedError;
}
