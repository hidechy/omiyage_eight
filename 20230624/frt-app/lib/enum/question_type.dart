enum QuestionType {
  /* カウンセリング質問 */
  counseling,
  /* 医薬品問診の設問 */
  medicine,
}

extension QuestionTypeExt on QuestionType {
  String get value {
    switch (this) {
      case QuestionType.counseling:
        return 'counseling';
      case QuestionType.medicine:
        return 'medicine';
    }
  }
}
