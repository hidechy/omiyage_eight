enum UserPropertyType {
  shopCd,
  age,
  loginType,
  memberType,
  deliveryChargeType,
  todofuken,
  hub,
  continueDay,
}

extension UserPropertyTypeExt on UserPropertyType {
  String get name {
    switch (this) {
      case UserPropertyType.shopCd:
        return 'ShopCd';
      case UserPropertyType.age:
        return 'Age';
      case UserPropertyType.loginType:
        return 'LoginType';
      case UserPropertyType.memberType:
        return 'MemberType';
      case UserPropertyType.deliveryChargeType:
        return 'DeliveryChargeType';
      case UserPropertyType.todofuken:
        return 'Todofuken';
      case UserPropertyType.hub:
        return 'Hub';
      case UserPropertyType.continueDay:
        return 'ContinueDay';
    }
  }
}
