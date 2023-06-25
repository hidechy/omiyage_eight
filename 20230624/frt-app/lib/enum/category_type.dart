enum CategoryType {
  drug,
  akahon,
  alcohol,
  other,
}

extension CategoryTypeExt on CategoryType {
  static CategoryType fromString(String? value) {
    switch (value) {
      case '20900':
        return CategoryType.drug;
      case '20910':
        return CategoryType.akahon;
      case '10002':
        return CategoryType.alcohol;
      default:
        return CategoryType.other;
    }
  }

  bool get isDrug => this == CategoryType.drug;
  bool get isAkahon => this == CategoryType.akahon;
  bool get isAlcohol => this == CategoryType.alcohol;
}
