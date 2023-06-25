/// カートクリアモデル
class ClearCartModel {
  const ClearCartModel({
    this.ids = const <int>[],
  });

  factory ClearCartModel.fromJson(dynamic json) {
    return json == null
        ? const ClearCartModel()
        : ClearCartModel(
            ids: json['ids'].cast<int>() as List<int>,
          );
    //<dynamic>[]
  }

  /* カートID */
  final List<int> ids;

  @override
  String toString() {
    return 'ClearCartModel[ids=$ids, ]';
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'ids': ids};
  }

  static List<ClearCartModel> listFromJson(List<dynamic>? json) {
    return json?.map((dynamic value) => ClearCartModel.fromJson(value)).toList() ?? const [];
  }
}
