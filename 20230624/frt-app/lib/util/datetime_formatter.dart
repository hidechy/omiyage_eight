import 'package:intl/intl.dart';

import '../data/api/model/delivery_time_model.dart';

/// 与えられた日時情報から分を丸める
DateTime _truncateDateTimeMinutes(DateTime value) {
  DateTime parsed = value.toLocal();
  final int minute;
  if (parsed.minute < 30) {
    minute = 0;
  } else {
    minute = parsed.minute ~/ 10 * 10;
  }
  return DateTime(
    parsed.year,
    parsed.month,
    parsed.day,
    parsed.hour,
    minute,
  ).toLocal();
}

/// 与えられた日時情報を年、月、日のみにする
DateTime toYmd(DateTime val) {
  return DateTime(val.year, val.month, val.day);
}

/// 指定された引数を元に'M月d日(E) HH:mm〜HH:mm'形式で返す
String customFormatFromToDateTimeMd(String deliveryDate, DeliveryTimeModel deliveryTime) {
  final parsedDate = DateTime.tryParse(deliveryDate)?.toLocal();
  final startHour = deliveryTime.deliveryStartHour;
  final startMinute = deliveryTime.deliveryStartMinute;
  final finishHour = deliveryTime.deliveryFinishHour;
  final finishMinute = deliveryTime.deliveryFinishMinute;
  if (parsedDate == null) {
    return '';
  }
  return '${DateFormat('M月d日(E)', 'ja').format(parsedDate)} $startHour:$startMinute〜$finishHour:$finishMinute';
}

/// 指定された2つの日付を元に'M月d日(E) HH:mm〜HH:mm'形式で返す
String formatFromToDateTimeMd(DateTime? from, DateTime? to) {
  if (from == null || to == null) return '';

  // FROMは丸める
  final parsedFrom = _truncateDateTimeMinutes(from);
  // TOは丸めない
  final parsedTo = to.toLocal();
  return '${DateFormat('M月d日(E) HH:mm', 'ja').format(parsedFrom)}〜${DateFormat('HH:mm').format(parsedTo)}';
}

/// 指定された日付を元に'MM/dd(E)HH時'形式で返す
String formatMonthDayHour(String date) {
  final parsedDate = DateTime.tryParse(date)?.toLocal();
  if (parsedDate == null) {
    return '';
  }
  return DateFormat('MM/dd(E)HH時', 'ja').format(parsedDate);
}

/// 指定された日付を元に'MM/dd(E)'形式で返す
String formatMonthDay(String date) {
  final parsedDate = DateTime.tryParse(date)?.toLocal();
  if (parsedDate == null) {
    return '';
  }
  return DateFormat('MM/dd(E)', 'ja').format(parsedDate);
}

/// 指定された日付を元に'MM/dd(E)'形式で返す
String formatDateTimeMonthDay(DateTime? date) {
  final parsedDate = date?.toLocal();
  if (parsedDate == null) {
    return '';
  }
  return DateFormat('MM/dd(E)', 'ja').format(parsedDate);
}

/// 指定された日付を元に'MM/dd(E)HH時'形式で返す
String formatDateTimeMonthDayHour(DateTime? date) {
  final parsedDate = date?.toLocal();
  if (parsedDate == null) {
    return '';
  }
  return DateFormat('MM/dd(E)HH時', 'ja').format(parsedDate);
}

/// 指定された日付を元に'M/d(E) HH:mm'形式で返す
String formatDateTimeJaMd(DateTime? date) {
  final parsedDate = date?.toLocal();
  if (parsedDate == null) {
    return '';
  }
  return DateFormat('M月d日(E)　HH:mm', 'ja').format(parsedDate);
}

/// 指定された日付を元に'yyyy/MM/dd(E)'形式で返す
String formatDateTimeYearDateTime(DateTime? date) {
  final parsedDate = date?.toLocal();
  if (parsedDate == null) {
    return '';
  }
  return DateFormat('yyyy/MM/dd(E)', 'ja').format(parsedDate);
}

/// 指定された2つの日付を元に'yyyy年M月d日〜yyyy年M月d日'形式で返す
String formatFromToDateMd(DateTime? from, DateTime? to) {
  final parsedFrom = from?.toLocal();
  final parsedTo = to?.toLocal();
  if (parsedFrom == null || parsedTo == null) {
    return '';
  }
  return '${DateFormat('yyyy年M月d日', 'ja').format(parsedFrom)}〜${DateFormat('yyyy年M月d日', 'ja').format(parsedTo)}';
}

/// 指定された2つの日付を元に'yyyy年M月d日〜yyyy年M月d日'形式で返す
String formatDateTimeFromToDateMd(DateTime? from, DateTime? to) {
  final parsedFrom = from?.toLocal();
  final parsedTo = to?.toLocal();
  if (parsedFrom == null || parsedTo == null) {
    return '';
  }
  return '${DateFormat('yyyy年M月d日', 'ja').format(parsedFrom)}〜${DateFormat('yyyy年M月d日', 'ja').format(parsedTo)}';
}

/// 指定された日付を元に'YYYY年M月d日(E)'形式で返す
String formatYearDayJa(DateTime? date) {
  if (date == null) return '';

  final parsedDate = date.toLocal();
  return DateFormat('yyyy年M月d日(E)', 'ja').format(parsedDate);
}

/// 指定された日付を元に'YYYY年M月d日'形式で返す
String formatYearDayJaWithoutDayOfWeek(DateTime? date) {
  if (date == null) return '';

  final parsedDate = date.toLocal();
  return DateFormat('yyyy年M月d日', 'ja').format(parsedDate);
}

/// 指定された日付(DateTime)を元に'M月d日(E)'形式で返す
String formatMonthDayJaMdFromDateTime(DateTime date) {
  return DateFormat('M月d日(E)', 'ja').format(date);
}

/// 'M月d日'形式で返す
String formatMonthDayJaMdWithoutDayOfWeek(String value) {
  if (value.isEmpty) {
    return '';
  }
  return DateFormat('M月d日', 'ja').format(DateTime.parse(value).toLocal());
}

/// yyyyMMdd形式で返す
String formatISO8601Ymd(DateTime value) {
  return DateFormat('yyyyMMdd', 'ja').format(value.toLocal());
}

/// 指定された日付を元に'yyyy年M月d日(E) HH時mm分'形式で返す
String formatYearDayTimeJa(DateTime? date) {
  if (date == null) {
    return '';
  }

  final parsedDate = date.toLocal();
  return DateFormat('yyyy年M月d日(E) HH時mm分', 'ja').format(parsedDate);
}

/// 指定された日付(DateTime)を元に'yyyy-MM-dd'形式で返す
String formatYearMonthDayFromDateTime(DateTime date) {
  return DateFormat('yyyy-MM-dd', 'ja').format(date);
}

/// 指定された日付(DateTime)を元に'HH:mm'形式で返す
String formatToTime(DateTime date) {
  try {
    final parsedDate = date.toLocal();
    return DateFormat('HH:mm', 'ja').format(parsedDate);
  } catch (_) {
    return '';
  }
}

/// 指定された日付(String)がfrom(String)〜to(String)の範囲内であれば'MM/dd(E)〜MM/dd(E)'の形式で返す
/// ※from(String)とto(String)が同じ場合は'MM/dd(E)'の形式で返す
String formatFromToMonthDay({
  required String targetDatetime,
  required String? fromDatetime,
  required String? toDatetime,
}) {
  if (fromDatetime == null || toDatetime == null) {
    return '';
  }
  final targetDatetimeYmd = toYmd(DateTime.parse(targetDatetime).toLocal());
  final fromDatetimeYmd = toYmd(DateTime.parse(fromDatetime).toLocal());
  final toDatetimeYmd = toYmd(DateTime.parse(toDatetime).toLocal());
  if (targetDatetimeYmd.compareTo(fromDatetimeYmd) != -1 && targetDatetimeYmd.compareTo(toDatetimeYmd) != 1) {
    return fromDatetimeYmd == toDatetimeYmd
        ? formatMonthDay(fromDatetime)
        : '${formatMonthDay(fromDatetime)}～${formatMonthDay(toDatetime)}';
  }
  return '';
}

/// 指定された日付(String)がfrom(String)〜to(String)の範囲内であれば'MM/dd(E)〜MM/dd(E)'の形式で返す
/// ※from(String)とto(String)が同じ場合は'MM/dd(E)'の形式で返す
String formatDateTimeFromToMonthDay({
  required DateTime targetDatetime,
  required DateTime? fromDatetime,
  required DateTime? toDatetime,
}) {
  if (fromDatetime == null || toDatetime == null) {
    return '';
  }
  final targetDatetimeYmd = toYmd(targetDatetime.toLocal());
  final fromDatetimeYmd = toYmd(fromDatetime.toLocal());
  final toDatetimeYmd = toYmd(toDatetime.toLocal());
  if (targetDatetimeYmd.compareTo(fromDatetimeYmd) != -1 && targetDatetimeYmd.compareTo(toDatetimeYmd) != 1) {
    return fromDatetimeYmd == toDatetimeYmd
        ? formatDateTimeMonthDay(fromDatetime)
        : '${formatDateTimeMonthDay(fromDatetime)}～${formatDateTimeMonthDay(toDatetime)}';
  }
  return '';
}
