// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(VisitorInfoModel visitor) visitor,
    required TResult Function(BaseCustomerModel customer) member,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(VisitorInfoModel visitor)? visitor,
    TResult? Function(BaseCustomerModel customer)? member,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(VisitorInfoModel visitor)? visitor,
    TResult Function(BaseCustomerModel customer)? member,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Logout value) $default, {
    required TResult Function(_Visitor value) visitor,
    required TResult Function(_Member value) member,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Logout value)? $default, {
    TResult? Function(_Visitor value)? visitor,
    TResult? Function(_Member value)? member,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Logout value)? $default, {
    TResult Function(_Visitor value)? visitor,
    TResult Function(_Member value)? member,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerStateCopyWith<$Res> {
  factory $CustomerStateCopyWith(
          CustomerState value, $Res Function(CustomerState) then) =
      _$CustomerStateCopyWithImpl<$Res, CustomerState>;
}

/// @nodoc
class _$CustomerStateCopyWithImpl<$Res, $Val extends CustomerState>
    implements $CustomerStateCopyWith<$Res> {
  _$CustomerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$_Logout>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Logout extends _Logout {
  const _$_Logout() : super._();

  @override
  String toString() {
    return 'CustomerState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(VisitorInfoModel visitor) visitor,
    required TResult Function(BaseCustomerModel customer) member,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(VisitorInfoModel visitor)? visitor,
    TResult? Function(BaseCustomerModel customer)? member,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(VisitorInfoModel visitor)? visitor,
    TResult Function(BaseCustomerModel customer)? member,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Logout value) $default, {
    required TResult Function(_Visitor value) visitor,
    required TResult Function(_Member value) member,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Logout value)? $default, {
    TResult? Function(_Visitor value)? visitor,
    TResult? Function(_Member value)? member,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Logout value)? $default, {
    TResult Function(_Visitor value)? visitor,
    TResult Function(_Member value)? member,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Logout extends CustomerState {
  const factory _Logout() = _$_Logout;
  const _Logout._() : super._();
}

/// @nodoc
abstract class _$$_VisitorCopyWith<$Res> {
  factory _$$_VisitorCopyWith(
          _$_Visitor value, $Res Function(_$_Visitor) then) =
      __$$_VisitorCopyWithImpl<$Res>;
  @useResult
  $Res call({VisitorInfoModel visitor});

  $VisitorInfoModelCopyWith<$Res> get visitor;
}

/// @nodoc
class __$$_VisitorCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$_Visitor>
    implements _$$_VisitorCopyWith<$Res> {
  __$$_VisitorCopyWithImpl(_$_Visitor _value, $Res Function(_$_Visitor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitor = null,
  }) {
    return _then(_$_Visitor(
      null == visitor
          ? _value.visitor
          : visitor // ignore: cast_nullable_to_non_nullable
              as VisitorInfoModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $VisitorInfoModelCopyWith<$Res> get visitor {
    return $VisitorInfoModelCopyWith<$Res>(_value.visitor, (value) {
      return _then(_value.copyWith(visitor: value));
    });
  }
}

/// @nodoc

class _$_Visitor extends _Visitor {
  const _$_Visitor(this.visitor) : super._();

  @override
  final VisitorInfoModel visitor;

  @override
  String toString() {
    return 'CustomerState.visitor(visitor: $visitor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Visitor &&
            (identical(other.visitor, visitor) || other.visitor == visitor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visitor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VisitorCopyWith<_$_Visitor> get copyWith =>
      __$$_VisitorCopyWithImpl<_$_Visitor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(VisitorInfoModel visitor) visitor,
    required TResult Function(BaseCustomerModel customer) member,
  }) {
    return visitor(this.visitor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(VisitorInfoModel visitor)? visitor,
    TResult? Function(BaseCustomerModel customer)? member,
  }) {
    return visitor?.call(this.visitor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(VisitorInfoModel visitor)? visitor,
    TResult Function(BaseCustomerModel customer)? member,
    required TResult orElse(),
  }) {
    if (visitor != null) {
      return visitor(this.visitor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Logout value) $default, {
    required TResult Function(_Visitor value) visitor,
    required TResult Function(_Member value) member,
  }) {
    return visitor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Logout value)? $default, {
    TResult? Function(_Visitor value)? visitor,
    TResult? Function(_Member value)? member,
  }) {
    return visitor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Logout value)? $default, {
    TResult Function(_Visitor value)? visitor,
    TResult Function(_Member value)? member,
    required TResult orElse(),
  }) {
    if (visitor != null) {
      return visitor(this);
    }
    return orElse();
  }
}

abstract class _Visitor extends CustomerState {
  const factory _Visitor(final VisitorInfoModel visitor) = _$_Visitor;
  const _Visitor._() : super._();

  VisitorInfoModel get visitor;
  @JsonKey(ignore: true)
  _$$_VisitorCopyWith<_$_Visitor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MemberCopyWith<$Res> {
  factory _$$_MemberCopyWith(_$_Member value, $Res Function(_$_Member) then) =
      __$$_MemberCopyWithImpl<$Res>;
  @useResult
  $Res call({BaseCustomerModel customer});
}

/// @nodoc
class __$$_MemberCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$_Member>
    implements _$$_MemberCopyWith<$Res> {
  __$$_MemberCopyWithImpl(_$_Member _value, $Res Function(_$_Member) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
  }) {
    return _then(_$_Member(
      null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as BaseCustomerModel,
    ));
  }
}

/// @nodoc

class _$_Member extends _Member {
  const _$_Member(this.customer) : super._();

  @override
  final BaseCustomerModel customer;

  @override
  String toString() {
    return 'CustomerState.member(customer: $customer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Member &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemberCopyWith<_$_Member> get copyWith =>
      __$$_MemberCopyWithImpl<_$_Member>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(VisitorInfoModel visitor) visitor,
    required TResult Function(BaseCustomerModel customer) member,
  }) {
    return member(customer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(VisitorInfoModel visitor)? visitor,
    TResult? Function(BaseCustomerModel customer)? member,
  }) {
    return member?.call(customer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(VisitorInfoModel visitor)? visitor,
    TResult Function(BaseCustomerModel customer)? member,
    required TResult orElse(),
  }) {
    if (member != null) {
      return member(customer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Logout value) $default, {
    required TResult Function(_Visitor value) visitor,
    required TResult Function(_Member value) member,
  }) {
    return member(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Logout value)? $default, {
    TResult? Function(_Visitor value)? visitor,
    TResult? Function(_Member value)? member,
  }) {
    return member?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Logout value)? $default, {
    TResult Function(_Visitor value)? visitor,
    TResult Function(_Member value)? member,
    required TResult orElse(),
  }) {
    if (member != null) {
      return member(this);
    }
    return orElse();
  }
}

abstract class _Member extends CustomerState {
  const factory _Member(final BaseCustomerModel customer) = _$_Member;
  const _Member._() : super._();

  BaseCustomerModel get customer;
  @JsonKey(ignore: true)
  _$$_MemberCopyWith<_$_Member> get copyWith =>
      throw _privateConstructorUsedError;
}
