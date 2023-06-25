// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medicine_unable_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MedicineUnableModel _$MedicineUnableModelFromJson(Map<String, dynamic> json) {
  return _MedicineUnableModel.fromJson(json);
}

/// @nodoc
mixin _$MedicineUnableModel {
/* 効能効果 */
  String get effect =>
      throw _privateConstructorUsedError; /* 乱用抑止医薬品フラグ ``` \"0\"：off \"1\"：on ``` */
  @StringToBooleanConverter()
  bool get abuseLimitedFlag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicineUnableModelCopyWith<MedicineUnableModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicineUnableModelCopyWith<$Res> {
  factory $MedicineUnableModelCopyWith(
          MedicineUnableModel value, $Res Function(MedicineUnableModel) then) =
      _$MedicineUnableModelCopyWithImpl<$Res, MedicineUnableModel>;
  @useResult
  $Res call({String effect, @StringToBooleanConverter() bool abuseLimitedFlag});
}

/// @nodoc
class _$MedicineUnableModelCopyWithImpl<$Res, $Val extends MedicineUnableModel>
    implements $MedicineUnableModelCopyWith<$Res> {
  _$MedicineUnableModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? effect = null,
    Object? abuseLimitedFlag = null,
  }) {
    return _then(_value.copyWith(
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as String,
      abuseLimitedFlag: null == abuseLimitedFlag
          ? _value.abuseLimitedFlag
          : abuseLimitedFlag // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MedicineUnableModelCopyWith<$Res>
    implements $MedicineUnableModelCopyWith<$Res> {
  factory _$$_MedicineUnableModelCopyWith(_$_MedicineUnableModel value,
          $Res Function(_$_MedicineUnableModel) then) =
      __$$_MedicineUnableModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String effect, @StringToBooleanConverter() bool abuseLimitedFlag});
}

/// @nodoc
class __$$_MedicineUnableModelCopyWithImpl<$Res>
    extends _$MedicineUnableModelCopyWithImpl<$Res, _$_MedicineUnableModel>
    implements _$$_MedicineUnableModelCopyWith<$Res> {
  __$$_MedicineUnableModelCopyWithImpl(_$_MedicineUnableModel _value,
      $Res Function(_$_MedicineUnableModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? effect = null,
    Object? abuseLimitedFlag = null,
  }) {
    return _then(_$_MedicineUnableModel(
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as String,
      abuseLimitedFlag: null == abuseLimitedFlag
          ? _value.abuseLimitedFlag
          : abuseLimitedFlag // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MedicineUnableModel implements _MedicineUnableModel {
  const _$_MedicineUnableModel(
      {this.effect = '',
      @StringToBooleanConverter() this.abuseLimitedFlag = false});

  factory _$_MedicineUnableModel.fromJson(Map<String, dynamic> json) =>
      _$$_MedicineUnableModelFromJson(json);

/* 効能効果 */
  @override
  @JsonKey()
  final String effect;
/* 乱用抑止医薬品フラグ ``` \"0\"：off \"1\"：on ``` */
  @override
  @JsonKey()
  @StringToBooleanConverter()
  final bool abuseLimitedFlag;

  @override
  String toString() {
    return 'MedicineUnableModel(effect: $effect, abuseLimitedFlag: $abuseLimitedFlag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicineUnableModel &&
            (identical(other.effect, effect) || other.effect == effect) &&
            (identical(other.abuseLimitedFlag, abuseLimitedFlag) ||
                other.abuseLimitedFlag == abuseLimitedFlag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, effect, abuseLimitedFlag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MedicineUnableModelCopyWith<_$_MedicineUnableModel> get copyWith =>
      __$$_MedicineUnableModelCopyWithImpl<_$_MedicineUnableModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicineUnableModelToJson(
      this,
    );
  }
}

abstract class _MedicineUnableModel implements MedicineUnableModel {
  const factory _MedicineUnableModel(
          {final String effect,
          @StringToBooleanConverter() final bool abuseLimitedFlag}) =
      _$_MedicineUnableModel;

  factory _MedicineUnableModel.fromJson(Map<String, dynamic> json) =
      _$_MedicineUnableModel.fromJson;

  @override /* 効能効果 */
  String get effect;
  @override /* 乱用抑止医薬品フラグ ``` \"0\"：off \"1\"：on ``` */
  @StringToBooleanConverter()
  bool get abuseLimitedFlag;
  @override
  @JsonKey(ignore: true)
  _$$_MedicineUnableModelCopyWith<_$_MedicineUnableModel> get copyWith =>
      throw _privateConstructorUsedError;
}
