// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counseling_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CounselingPageState {
  CounselingQuestionModel get question => throw _privateConstructorUsedError;
  AnswerFlag? get answerType1 => throw _privateConstructorUsedError;
  AnswerFlag? get answerType2 => throw _privateConstructorUsedError;
  AnswerFlag? get answerType3 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CounselingPageStateCopyWith<CounselingPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounselingPageStateCopyWith<$Res> {
  factory $CounselingPageStateCopyWith(
          CounselingPageState value, $Res Function(CounselingPageState) then) =
      _$CounselingPageStateCopyWithImpl<$Res, CounselingPageState>;
  @useResult
  $Res call(
      {CounselingQuestionModel question,
      AnswerFlag? answerType1,
      AnswerFlag? answerType2,
      AnswerFlag? answerType3});

  $CounselingQuestionModelCopyWith<$Res> get question;
}

/// @nodoc
class _$CounselingPageStateCopyWithImpl<$Res, $Val extends CounselingPageState>
    implements $CounselingPageStateCopyWith<$Res> {
  _$CounselingPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answerType1 = freezed,
    Object? answerType2 = freezed,
    Object? answerType3 = freezed,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as CounselingQuestionModel,
      answerType1: freezed == answerType1
          ? _value.answerType1
          : answerType1 // ignore: cast_nullable_to_non_nullable
              as AnswerFlag?,
      answerType2: freezed == answerType2
          ? _value.answerType2
          : answerType2 // ignore: cast_nullable_to_non_nullable
              as AnswerFlag?,
      answerType3: freezed == answerType3
          ? _value.answerType3
          : answerType3 // ignore: cast_nullable_to_non_nullable
              as AnswerFlag?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CounselingQuestionModelCopyWith<$Res> get question {
    return $CounselingQuestionModelCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CounselingPageStateCopyWith<$Res>
    implements $CounselingPageStateCopyWith<$Res> {
  factory _$$_CounselingPageStateCopyWith(_$_CounselingPageState value,
          $Res Function(_$_CounselingPageState) then) =
      __$$_CounselingPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CounselingQuestionModel question,
      AnswerFlag? answerType1,
      AnswerFlag? answerType2,
      AnswerFlag? answerType3});

  @override
  $CounselingQuestionModelCopyWith<$Res> get question;
}

/// @nodoc
class __$$_CounselingPageStateCopyWithImpl<$Res>
    extends _$CounselingPageStateCopyWithImpl<$Res, _$_CounselingPageState>
    implements _$$_CounselingPageStateCopyWith<$Res> {
  __$$_CounselingPageStateCopyWithImpl(_$_CounselingPageState _value,
      $Res Function(_$_CounselingPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answerType1 = freezed,
    Object? answerType2 = freezed,
    Object? answerType3 = freezed,
  }) {
    return _then(_$_CounselingPageState(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as CounselingQuestionModel,
      answerType1: freezed == answerType1
          ? _value.answerType1
          : answerType1 // ignore: cast_nullable_to_non_nullable
              as AnswerFlag?,
      answerType2: freezed == answerType2
          ? _value.answerType2
          : answerType2 // ignore: cast_nullable_to_non_nullable
              as AnswerFlag?,
      answerType3: freezed == answerType3
          ? _value.answerType3
          : answerType3 // ignore: cast_nullable_to_non_nullable
              as AnswerFlag?,
    ));
  }
}

/// @nodoc

class _$_CounselingPageState implements _CounselingPageState {
  _$_CounselingPageState(
      {this.question = const CounselingQuestionModel(),
      this.answerType1,
      this.answerType2,
      this.answerType3});

  @override
  @JsonKey()
  final CounselingQuestionModel question;
  @override
  final AnswerFlag? answerType1;
  @override
  final AnswerFlag? answerType2;
  @override
  final AnswerFlag? answerType3;

  @override
  String toString() {
    return 'CounselingPageState(question: $question, answerType1: $answerType1, answerType2: $answerType2, answerType3: $answerType3)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CounselingPageState &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answerType1, answerType1) ||
                other.answerType1 == answerType1) &&
            (identical(other.answerType2, answerType2) ||
                other.answerType2 == answerType2) &&
            (identical(other.answerType3, answerType3) ||
                other.answerType3 == answerType3));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, question, answerType1, answerType2, answerType3);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CounselingPageStateCopyWith<_$_CounselingPageState> get copyWith =>
      __$$_CounselingPageStateCopyWithImpl<_$_CounselingPageState>(
          this, _$identity);
}

abstract class _CounselingPageState implements CounselingPageState {
  factory _CounselingPageState(
      {final CounselingQuestionModel question,
      final AnswerFlag? answerType1,
      final AnswerFlag? answerType2,
      final AnswerFlag? answerType3}) = _$_CounselingPageState;

  @override
  CounselingQuestionModel get question;
  @override
  AnswerFlag? get answerType1;
  @override
  AnswerFlag? get answerType2;
  @override
  AnswerFlag? get answerType3;
  @override
  @JsonKey(ignore: true)
  _$$_CounselingPageStateCopyWith<_$_CounselingPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
