mixin BaseAddressModel {
  /* 郵便番号 - ハイフンなしの7桁 maxLength: 7 */
  String get postalNumber;

/* 都道府県コード */
  String get prefectureCode;

/* 都道府県名 */
  String get prefectureName;

/* 市区郡町村コード */
  String get cityCode;

/* 市区郡町村名 */
  String get cityName;

/* 通称コード */
  String get townCode;

/* 通称名 */
  String get townName;

/* 丁目コード */
  String get chomeCode;

/* 丁目 */
  String get chomeName;

/* 詳細 - 番地、号 maxLength: 150 */
  String get addressDetail;

/* 詳細２ - 建物名、部屋番号 maxLength: 150 */
  String get addressDetail2;

  String get fullAddress => '$prefectureName$cityName$townName$chomeName $addressDetail $addressDetail2'.trimRight();
}
