import 'package:intl/intl.dart';

final formatter = NumberFormat('#,###');

/// 金額[value]を3桁区切りの¥にして返す
String formatToYen(int value) {
  return '¥${formatToThousandsSeparator(value)}';
}

/// valueを３桁区切りにして返す
String formatToThousandsSeparator(int value) {
  return formatter.format(value);
}

/// 7桁の郵便番号を表示用にフォーマットする
String formatToSeparatedZipCode(String value) {
  return value.substring(0, 3) + '-' + value.substring(3, 7);
}
