// ignore_for_file: depend_on_referenced_packages

import 'package:logger/logger.dart';

class SLoggerHelper {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 5,
      lineLength: 50,
      colors: true,
      printEmojis: true,
      printTime: false,
    ),
    level: Level.debug,
  );
  // Debug logging method
  static void debug(dynamic message) {
    _logger.d(message);
  }

  // Info logging method
  static void info(dynamic message) {
    _logger.i(message);
  }

  // Warning logging method
  static void warning(dynamic message) {
    _logger.w(message);
  }

  // Error logging method
  static void error(String message, [dynamic error]) {
    _logger.e(message, error);
  }
}
