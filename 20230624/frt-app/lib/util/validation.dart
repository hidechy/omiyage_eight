/// 1文字 && (平仮名 or カタカナ or 半角カタカナ)チェック
bool checkOneLetterJa(String value) {
  return value.length == 1 && RegExp(r'\p{scx=Hira}|\p{scx=Kana}|[､-ﾟ]', unicode: true).hasMatch(value);
}
