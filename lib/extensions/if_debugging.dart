import 'package:flutter/foundation.dart' show kDebugMode;

extension IfDebugging on String {
  // checking if app is in debug mode and return value
  String? get ifDebugging => kDebugMode ? this : null;
}
