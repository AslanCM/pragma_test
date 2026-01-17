import 'package:injectable/injectable.dart';
import 'package:logger/web.dart';

import 'log_service.dart';

@LazySingleton(as: LogService)
class LoggerImpl implements LogService {
  final Logger _logger;

  LoggerImpl() : _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 5, 
      lineLength: 80, 
      colors: true, 
      printEmojis: true, 
    ),
  );

  @override
  void debug(String message) {
    _logger.d(message);
  }

  @override
  void info(String message) {
    _logger.i(message);
  }

  @override
  void warning(String message) {
    _logger.w(message);
  }

  @override
  void error(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.e(message, error: error, stackTrace: stackTrace);
  }
}