enum AnswerFlag {
  /* いいえ */
  no,
  /* はい */
  yes,
}

extension AnswerFlagExt on AnswerFlag {
  String get value {
    switch (this) {
      case AnswerFlag.no:
        return '0';
      case AnswerFlag.yes:
        return '1';
    }
  }
}
