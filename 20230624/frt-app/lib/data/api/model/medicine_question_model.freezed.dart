// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medicine_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MedicineQuestionModel _$MedicineQuestionModelFromJson(
    Map<String, dynamic> json) {
  return _MedicineQuestionModel.fromJson(json);
}

/// @nodoc
mixin _$MedicineQuestionModel {
/* 医薬品名 */
  String get productName =>
      throw _privateConstructorUsedError; /* 医薬品の種別 ``` \"all\"：すべて \"A\"：第一類医薬品 \"B\"：指定第２類医薬品 \"C\"：第２類医薬品 \"D\"：第３医薬品 \"E\"：医薬部外品 ``` */
  DrugType get productType =>
      throw _privateConstructorUsedError; /* 添付文書 pdfファイル名 */
  String get attachedDocument =>
      throw _privateConstructorUsedError; /* 医薬品購入不可設定リスト */
  List<MedicineUnableModel> get medicineUnables =>
      throw _privateConstructorUsedError; /* 医薬品購入注意メッセージ */
  String get medicineRepeatMessage =>
      throw _privateConstructorUsedError; /* 医薬品購入注意メッセージコード ※別ファイル：メッセージコード_一覧参照 */
  String get medicineRepeatMessageCode =>
      throw _privateConstructorUsedError; /* 性別 ``` \"0\"：男性 \"1\"：女性 \"2\"：回答しない ``` */
  Gender get gender =>
      throw _privateConstructorUsedError; /* 18歳未満判定 - true：18歳未満 - false：18歳以上 */
  bool get isUnderage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicineQuestionModelCopyWith<MedicineQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicineQuestionModelCopyWith<$Res> {
  factory $MedicineQuestionModelCopyWith(MedicineQuestionModel value,
          $Res Function(MedicineQuestionModel) then) =
      _$MedicineQuestionModelCopyWithImpl<$Res, MedicineQuestionModel>;
  @useResult
  $Res call(
      {String productName,
      DrugType productType,
      String attachedDocument,
      List<MedicineUnableModel> medicineUnables,
      String medicineRepeatMessage,
      String medicineRepeatMessageCode,
      Gender gender,
      bool isUnderage});
}

/// @nodoc
class _$MedicineQuestionModelCopyWithImpl<$Res,
        $Val extends MedicineQuestionModel>
    implements $MedicineQuestionModelCopyWith<$Res> {
  _$MedicineQuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
    Object? productType = null,
    Object? attachedDocument = null,
    Object? medicineUnables = null,
    Object? medicineRepeatMessage = null,
    Object? medicineRepeatMessageCode = null,
    Object? gender = null,
    Object? isUnderage = null,
  }) {
    return _then(_value.copyWith(
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as DrugType,
      attachedDocument: null == attachedDocument
          ? _value.attachedDocument
          : attachedDocument // ignore: cast_nullable_to_non_nullable
              as String,
      medicineUnables: null == medicineUnables
          ? _value.medicineUnables
          : medicineUnables // ignore: cast_nullable_to_non_nullable
              as List<MedicineUnableModel>,
      medicineRepeatMessage: null == medicineRepeatMessage
          ? _value.medicineRepeatMessage
          : medicineRepeatMessage // ignore: cast_nullable_to_non_nullable
              as String,
      medicineRepeatMessageCode: null == medicineRepeatMessageCode
          ? _value.medicineRepeatMessageCode
          : medicineRepeatMessageCode // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      isUnderage: null == isUnderage
          ? _value.isUnderage
          : isUnderage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MedicineQuestionModelCopyWith<$Res>
    implements $MedicineQuestionModelCopyWith<$Res> {
  factory _$$_MedicineQuestionModelCopyWith(_$_MedicineQuestionModel value,
          $Res Function(_$_MedicineQuestionModel) then) =
      __$$_MedicineQuestionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productName,
      DrugType productType,
      String attachedDocument,
      List<MedicineUnableModel> medicineUnables,
      String medicineRepeatMessage,
      String medicineRepeatMessageCode,
      Gender gender,
      bool isUnderage});
}

/// @nodoc
class __$$_MedicineQuestionModelCopyWithImpl<$Res>
    extends _$MedicineQuestionModelCopyWithImpl<$Res, _$_MedicineQuestionModel>
    implements _$$_MedicineQuestionModelCopyWith<$Res> {
  __$$_MedicineQuestionModelCopyWithImpl(_$_MedicineQuestionModel _value,
      $Res Function(_$_MedicineQuestionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
    Object? productType = null,
    Object? attachedDocument = null,
    Object? medicineUnables = null,
    Object? medicineRepeatMessage = null,
    Object? medicineRepeatMessageCode = null,
    Object? gender = null,
    Object? isUnderage = null,
  }) {
    return _then(_$_MedicineQuestionModel(
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as DrugType,
      attachedDocument: null == attachedDocument
          ? _value.attachedDocument
          : attachedDocument // ignore: cast_nullable_to_non_nullable
              as String,
      medicineUnables: null == medicineUnables
          ? _value._medicineUnables
          : medicineUnables // ignore: cast_nullable_to_non_nullable
              as List<MedicineUnableModel>,
      medicineRepeatMessage: null == medicineRepeatMessage
          ? _value.medicineRepeatMessage
          : medicineRepeatMessage // ignore: cast_nullable_to_non_nullable
              as String,
      medicineRepeatMessageCode: null == medicineRepeatMessageCode
          ? _value.medicineRepeatMessageCode
          : medicineRepeatMessageCode // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      isUnderage: null == isUnderage
          ? _value.isUnderage
          : isUnderage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MedicineQuestionModel extends _MedicineQuestionModel {
  const _$_MedicineQuestionModel(
      {this.productName = '',
      this.productType = DrugType.quasiDrugs,
      this.attachedDocument = '',
      final List<MedicineUnableModel> medicineUnables =
          const <MedicineUnableModel>[],
      this.medicineRepeatMessage = '',
      this.medicineRepeatMessageCode = '',
      this.gender = Gender.noAnswer,
      this.isUnderage = false})
      : _medicineUnables = medicineUnables,
        super._();

  factory _$_MedicineQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$$_MedicineQuestionModelFromJson(json);

/* 医薬品名 */
  @override
  @JsonKey()
  final String productName;
/* 医薬品の種別 ``` \"all\"：すべて \"A\"：第一類医薬品 \"B\"：指定第２類医薬品 \"C\"：第２類医薬品 \"D\"：第３医薬品 \"E\"：医薬部外品 ``` */
  @override
  @JsonKey()
  final DrugType productType;
/* 添付文書 pdfファイル名 */
  @override
  @JsonKey()
  final String attachedDocument;
/* 医薬品購入不可設定リスト */
  final List<MedicineUnableModel> _medicineUnables;
/* 医薬品購入不可設定リスト */
  @override
  @JsonKey()
  List<MedicineUnableModel> get medicineUnables {
    if (_medicineUnables is EqualUnmodifiableListView) return _medicineUnables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medicineUnables);
  }

/* 医薬品購入注意メッセージ */
  @override
  @JsonKey()
  final String medicineRepeatMessage;
/* 医薬品購入注意メッセージコード ※別ファイル：メッセージコード_一覧参照 */
  @override
  @JsonKey()
  final String medicineRepeatMessageCode;
/* 性別 ``` \"0\"：男性 \"1\"：女性 \"2\"：回答しない ``` */
  @override
  @JsonKey()
  final Gender gender;
/* 18歳未満判定 - true：18歳未満 - false：18歳以上 */
  @override
  @JsonKey()
  final bool isUnderage;

  @override
  String toString() {
    return 'MedicineQuestionModel(productName: $productName, productType: $productType, attachedDocument: $attachedDocument, medicineUnables: $medicineUnables, medicineRepeatMessage: $medicineRepeatMessage, medicineRepeatMessageCode: $medicineRepeatMessageCode, gender: $gender, isUnderage: $isUnderage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicineQuestionModel &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productType, productType) ||
                other.productType == productType) &&
            (identical(other.attachedDocument, attachedDocument) ||
                other.attachedDocument == attachedDocument) &&
            const DeepCollectionEquality()
                .equals(other._medicineUnables, _medicineUnables) &&
            (identical(other.medicineRepeatMessage, medicineRepeatMessage) ||
                other.medicineRepeatMessage == medicineRepeatMessage) &&
            (identical(other.medicineRepeatMessageCode,
                    medicineRepeatMessageCode) ||
                other.medicineRepeatMessageCode == medicineRepeatMessageCode) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.isUnderage, isUnderage) ||
                other.isUnderage == isUnderage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productName,
      productType,
      attachedDocument,
      const DeepCollectionEquality().hash(_medicineUnables),
      medicineRepeatMessage,
      medicineRepeatMessageCode,
      gender,
      isUnderage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MedicineQuestionModelCopyWith<_$_MedicineQuestionModel> get copyWith =>
      __$$_MedicineQuestionModelCopyWithImpl<_$_MedicineQuestionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicineQuestionModelToJson(
      this,
    );
  }
}

abstract class _MedicineQuestionModel extends MedicineQuestionModel {
  const factory _MedicineQuestionModel(
      {final String productName,
      final DrugType productType,
      final String attachedDocument,
      final List<MedicineUnableModel> medicineUnables,
      final String medicineRepeatMessage,
      final String medicineRepeatMessageCode,
      final Gender gender,
      final bool isUnderage}) = _$_MedicineQuestionModel;
  const _MedicineQuestionModel._() : super._();

  factory _MedicineQuestionModel.fromJson(Map<String, dynamic> json) =
      _$_MedicineQuestionModel.fromJson;

  @override /* 医薬品名 */
  String get productName;
  @override /* 医薬品の種別 ``` \"all\"：すべて \"A\"：第一類医薬品 \"B\"：指定第２類医薬品 \"C\"：第２類医薬品 \"D\"：第３医薬品 \"E\"：医薬部外品 ``` */
  DrugType get productType;
  @override /* 添付文書 pdfファイル名 */
  String get attachedDocument;
  @override /* 医薬品購入不可設定リスト */
  List<MedicineUnableModel> get medicineUnables;
  @override /* 医薬品購入注意メッセージ */
  String get medicineRepeatMessage;
  @override /* 医薬品購入注意メッセージコード ※別ファイル：メッセージコード_一覧参照 */
  String get medicineRepeatMessageCode;
  @override /* 性別 ``` \"0\"：男性 \"1\"：女性 \"2\"：回答しない ``` */
  Gender get gender;
  @override /* 18歳未満判定 - true：18歳未満 - false：18歳以上 */
  bool get isUnderage;
  @override
  @JsonKey(ignore: true)
  _$$_MedicineQuestionModelCopyWith<_$_MedicineQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
