// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customers_me_nanaco_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomersMeNanacoModel _$CustomersMeNanacoModelFromJson(
    Map<String, dynamic> json) {
  return _CustomersMeNanacoModel.fromJson(json);
}

/// @nodoc
mixin _$CustomersMeNanacoModel {
  int get nanacoPoint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomersMeNanacoModelCopyWith<CustomersMeNanacoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomersMeNanacoModelCopyWith<$Res> {
  factory $CustomersMeNanacoModelCopyWith(CustomersMeNanacoModel value,
          $Res Function(CustomersMeNanacoModel) then) =
      _$CustomersMeNanacoModelCopyWithImpl<$Res, CustomersMeNanacoModel>;
  @useResult
  $Res call({int nanacoPoint});
}

/// @nodoc
class _$CustomersMeNanacoModelCopyWithImpl<$Res,
        $Val extends CustomersMeNanacoModel>
    implements $CustomersMeNanacoModelCopyWith<$Res> {
  _$CustomersMeNanacoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nanacoPoint = null,
  }) {
    return _then(_value.copyWith(
      nanacoPoint: null == nanacoPoint
          ? _value.nanacoPoint
          : nanacoPoint // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomersMeNanacoModelCopyWith<$Res>
    implements $CustomersMeNanacoModelCopyWith<$Res> {
  factory _$$_CustomersMeNanacoModelCopyWith(_$_CustomersMeNanacoModel value,
          $Res Function(_$_CustomersMeNanacoModel) then) =
      __$$_CustomersMeNanacoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int nanacoPoint});
}

/// @nodoc
class __$$_CustomersMeNanacoModelCopyWithImpl<$Res>
    extends _$CustomersMeNanacoModelCopyWithImpl<$Res,
        _$_CustomersMeNanacoModel>
    implements _$$_CustomersMeNanacoModelCopyWith<$Res> {
  __$$_CustomersMeNanacoModelCopyWithImpl(_$_CustomersMeNanacoModel _value,
      $Res Function(_$_CustomersMeNanacoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nanacoPoint = null,
  }) {
    return _then(_$_CustomersMeNanacoModel(
      nanacoPoint: null == nanacoPoint
          ? _value.nanacoPoint
          : nanacoPoint // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomersMeNanacoModel implements _CustomersMeNanacoModel {
  const _$_CustomersMeNanacoModel({this.nanacoPoint = 0});

  factory _$_CustomersMeNanacoModel.fromJson(Map<String, dynamic> json) =>
      _$$_CustomersMeNanacoModelFromJson(json);

  @override
  @JsonKey()
  final int nanacoPoint;

  @override
  String toString() {
    return 'CustomersMeNanacoModel(nanacoPoint: $nanacoPoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomersMeNanacoModel &&
            (identical(other.nanacoPoint, nanacoPoint) ||
                other.nanacoPoint == nanacoPoint));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nanacoPoint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomersMeNanacoModelCopyWith<_$_CustomersMeNanacoModel> get copyWith =>
      __$$_CustomersMeNanacoModelCopyWithImpl<_$_CustomersMeNanacoModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomersMeNanacoModelToJson(
      this,
    );
  }
}

abstract class _CustomersMeNanacoModel implements CustomersMeNanacoModel {
  const factory _CustomersMeNanacoModel({final int nanacoPoint}) =
      _$_CustomersMeNanacoModel;

  factory _CustomersMeNanacoModel.fromJson(Map<String, dynamic> json) =
      _$_CustomersMeNanacoModel.fromJson;

  @override
  int get nanacoPoint;
  @override
  @JsonKey(ignore: true)
  _$$_CustomersMeNanacoModelCopyWith<_$_CustomersMeNanacoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
