import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/api/model/base_customer_model.dart';
import '../../data/api/model/visitor_info_model.dart';

part 'customer_state.freezed.dart';

@freezed
class CustomerState with _$CustomerState {
  const CustomerState._();

  const factory CustomerState() = _Logout;

  const factory CustomerState.visitor(VisitorInfoModel visitor) = _Visitor;

  const factory CustomerState.member(BaseCustomerModel customer) = _Member;

  bool get isMember => when(() => false, visitor: (_) => false, member: (_) => true);
  bool get isVisitor => when(() => false, visitor: (_) => true, member: (_) => false);
  bool get isValid => when(() => false, visitor: (_) => true, member: (_) => true);

  VisitorInfoModel? get visitor => when(
        () => null,
        visitor: (visitor) => visitor,
        member: (_) => null,
      );

  BaseCustomerModel? get member => when(
        () => null,
        visitor: (_) => null,
        member: (member) => member,
      );
}
