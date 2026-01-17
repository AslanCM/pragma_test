import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../dio/dio_config.dart';
import '../dio/errors_interceptor.dart';

const String catApi = 'CatApi';

@module
abstract class NetworkModule {
  @Named(catApi)
  @lazySingleton
  Dio catDio(
    DioConfig dioConfig,
  ) {
    final dio = Dio(BaseOptions(
      baseUrl: dioConfig.baseUrl,
      connectTimeout: Duration(milliseconds: dioConfig.connectionTimeout),
      headers: {
        'Content-Type': 'application/json',
        'x-api-key': dotenv.env['CAT_API_KEY'] ?? '',
      }
      ));

      return _configureDio(dio, dioConfig);
  }

  Dio _configureDio(Dio dio, DioConfig dioConfig) {
    if (dioConfig.enableLogging) {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ));
    }
    
    dio.interceptors.add(ErrorInterceptor());

    return dio;
  }
}