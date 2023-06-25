import 'package:flutter/foundation.dart';

import 'package:simple_logger/simple_logger.dart';

final logger = SimpleLogger()
  ..setLevel(
    kDebugMode ? Level.ALL : Level.OFF,
    includeCallerInfo: kDebugMode,
  )
  ..mode = LoggerMode.log
  ..formatter = (info) => '${info.level} ${info.time}[${info.callerFrame}]${info.message}';
