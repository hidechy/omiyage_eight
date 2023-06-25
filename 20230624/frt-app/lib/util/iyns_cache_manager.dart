import 'package:flutter_cache_manager/flutter_cache_manager.dart';

final CacheManager iynsCacheManager = CacheManager(
  Config(
    'IynsCacheKey',
    stalePeriod: const Duration(days: 1),
    maxNrOfCacheObjects: 1000,
  ),
);
