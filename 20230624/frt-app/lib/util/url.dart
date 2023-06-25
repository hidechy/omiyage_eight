import 'dart:collection';

extension UriExt on Uri {
  List<String> get _normalizedPathSegments => UnmodifiableListView(pathSegments.takeWhile((p) => p.isNotEmpty));

  String get normalizedPath => '/${_normalizedPathSegments.join('/')}/';
}
