// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medicine_checksheet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MedicineChecksheetModel _$MedicineChecksheetModelFromJson(
    Map<String, dynamic> json) {
  return _MedicineChecksheetModel.fromJson(json);
}

/// @nodoc
mixin _$MedicineChecksheetModel {
/* 医薬品設問リスト(してはいけない) */
  List<MedicineChecksheetQuestionModel> get medicineTaboos =>
      throw _privateConstructorUsedError; /* 医薬品設問リスト(相談) */
  List<MedicineChecksheetQuestionModel> get medicineConsuls =>
      throw _privateConstructorUsedError; /* 添付文章PDFファイル名 */
  String get attachedDocument => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicineChecksheetModelCopyWith<MedicineChecksheetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicineChecksheetModelCopyWith<$Res> {
  factory $MedicineChecksheetModelCopyWith(MedicineChecksheetModel value,
          $Res Function(MedicineChecksheetModel) then) =
      _$MedicineChecksheetModelCopyWithImpl<$Res, MedicineChecksheetModel>;
  @useResult
  $Res call(
      {List<MedicineChecksheetQuestionModel> medicineTaboos,
      List<MedicineChecksheetQuestionModel> medicineConsuls,
      String attachedDocument});
}

/// @nodoc
class _$MedicineChecksheetModelCopyWithImpl<$Res,
        $Val extends MedicineChecksheetModel>
    implements $MedicineChecksheetModelCopyWith<$Res> {
  _$MedicineChecksheetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicineTaboos = null,
    Object? medicineConsuls = null,
    Object? attachedDocument = null,
  }) {
    return _then(_value.copyWith(
      medicineTaboos: null == medicineTaboos
          ? _value.medicineTaboos
          : medicineTaboos // ignore: cast_nullable_to_non_nullable
              as List<MedicineChecksheetQuestionModel>,
      medicineConsuls: null == medicineConsuls
          ? _value.medicineConsuls
          : medicineConsuls // ignore: cast_nullable_to_non_nullable
              as List<MedicineChecksheetQuestionModel>,
      attachedDocument: null == attachedDocument
          ? _value.attachedDocument
          : attachedDocument // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MedicineChecksheetModelCopyWith<$Res>
    implements $MedicineChecksheetModelCopyWith<$Res> {
  factory _$$_MedicineChecksheetModelCopyWith(_$_MedicineChecksheetModel value,
          $Res Function(_$_MedicineChecksheetModel) then) =
      __$$_MedicineChecksheetModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MedicineChecksheetQuestionModel> medicineTaboos,
      List<MedicineChecksheetQuestionModel> medicineConsuls,
      String attachedDocument});
}

/// @nodoc
class __$$_MedicineChecksheetModelCopyWithImpl<$Res>
    extends _$MedicineChecksheetModelCopyWithImpl<$Res,
        _$_MedicineChecksheetModel>
    implements _$$_MedicineChecksheetModelCopyWith<$Res> {
  __$$_MedicineChecksheetModelCopyWithImpl(_$_MedicineChecksheetModel _value,
      $Res Function(_$_MedicineChecksheetModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicineTaboos = null,
    Object? medicineConsuls = null,
    Object? attachedDocument = null,
  }) {
    return _then(_$_MedicineChecksheetModel(
      medicineTaboos: null == medicineTaboos
          ? _value._medicineTaboos
          : medicineTaboos // ignore: cast_nullable_to_non_nullable
              as List<MedicineChecksheetQuestionModel>,
      medicineConsuls: null == medicineConsuls
          ? _value._medicineConsuls
          : medicineConsuls // ignore: cast_nullable_to_non_nullable
              as List<MedicineChecksheetQuestionModel>,
      attachedDocument: null == attachedDocument
          ? _value.attachedDocument
          : attachedDocument // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MedicineChecksheetModel extends _MedicineChecksheetModel {
  const _$_MedicineChecksheetModel(
      {final List<MedicineChecksheetQuestionModel> medicineTaboos =
          const <MedicineChecksheetQuestionModel>[],
      final List<MedicineChecksheetQuestionModel> medicineConsuls =
          const <MedicineChecksheetQuestionModel>[],
      this.attachedDocument = ''})
      : _medicineTaboos = medicineTaboos,
        _medicineConsuls = medicineConsuls,
        super._();

  factory _$_MedicineChecksheetModel.fromJson(Map<String, dynamic> json) =>
      _$$_MedicineChecksheetModelFromJson(json);

/* 医薬品設問リスト(してはいけない) */
  final List<MedicineChecksheetQuestionModel> _medicineTaboos;
/* 医薬品設問リスト(してはいけない) */
  @override
  @JsonKey()
  List<MedicineChecksheetQuestionModel> get medicineTaboos {
    if (_medicineTaboos is EqualUnmodifiableListView) return _medicineTaboos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medicineTaboos);
  }

/* 医薬品設問リスト(相談) */
  final List<MedicineChecksheetQuestionModel> _medicineConsuls;
/* 医薬品設問リスト(相談) */
  @override
  @JsonKey()
  List<MedicineChecksheetQuestionModel> get medicineConsuls {
    if (_medicineConsuls is EqualUnmodifiableListView) return _medicineConsuls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medicineConsuls);
  }

/* 添付文章PDFファイル名 */
  @override
  @JsonKey()
  final String attachedDocument;

  @override
  String toString() {
    return 'MedicineChecksheetModel(medicineTaboos: $medicineTaboos, medicineConsuls: $medicineConsuls, attachedDocument: $attachedDocument)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicineChecksheetModel &&
            const DeepCollectionEquality()
                .equals(other._medicineTaboos, _medicineTaboos) &&
            const DeepCollectionEquality()
                .equals(other._medicineConsuls, _medicineConsuls) &&
            (identical(other.attachedDocument, attachedDocument) ||
                other.attachedDocument == attachedDocument));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_medicineTaboos),
      const DeepCollectionEquality().hash(_medicineConsuls),
      attachedDocument);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MedicineChecksheetModelCopyWith<_$_MedicineChecksheetModel>
      get copyWith =>
          __$$_MedicineChecksheetModelCopyWithImpl<_$_MedicineChecksheetModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicineChecksheetModelToJson(
      this,
    );
  }
}

abstract class _MedicineChecksheetModel extends MedicineChecksheetModel {
  const factory _MedicineChecksheetModel(
      {final List<MedicineChecksheetQuestionModel> medicineTaboos,
      final List<MedicineChecksheetQuestionModel> medicineConsuls,
      final String attachedDocument}) = _$_MedicineChecksheetModel;
  const _MedicineChecksheetModel._() : super._();

  factory _MedicineChecksheetModel.fromJson(Map<String, dynamic> json) =
      _$_MedicineChecksheetModel.fromJson;

  @override /* 医薬品設問リスト(してはいけない) */
  List<MedicineChecksheetQuestionModel> get medicineTaboos;
  @override /* 医薬品設問リスト(相談) */
  List<MedicineChecksheetQuestionModel> get medicineConsuls;
  @override /* 添付文章PDFファイル名 */
  String get attachedDocument;
  @override
  @JsonKey(ignore: true)
  _$$_MedicineChecksheetModelCopyWith<_$_MedicineChecksheetModel>
      get copyWith => throw _privateConstructorUsedError;
}
