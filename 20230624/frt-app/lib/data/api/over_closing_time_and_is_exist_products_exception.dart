class OverClosingTimeAndIsExistProductsException implements Exception {
  final message = '閉店時間を超えたため、商品が存在するカート情報を削除します';
}

class OverClosingTimeAndIsNotExistProductsException implements Exception {
  final message = '閉店時間を超えたため、商品が存在しないカート情報を削除します';
}
