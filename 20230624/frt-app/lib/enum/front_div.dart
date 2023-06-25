enum FrontDiv {
  /* PC */
  pc,
  /* モバイル */
  mobile,
  /* スマートフォン */
  sp,
}

extension FrontDivExt on FrontDiv {
  String get value {
    switch (this) {
      case FrontDiv.pc:
        return '1';
      case FrontDiv.mobile:
        return '2';
      case FrontDiv.sp:
        return '3';
    }
  }
}
