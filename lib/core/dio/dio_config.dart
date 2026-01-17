import 'package:injectable/injectable.dart';

abstract class DioConfig {
  String get baseUrl;
  int get receiveTimeout;
  int get connectionTimeout;
  bool get enableLogging;
  String get flavorName;
} 

@Environment('dev')
@Singleton(as: DioConfig)
class DevDioConfigImpl implements DioConfig {
  @override
  String get baseUrl => 'https://api.thecatapi.com/v1/';

  @override
  int get receiveTimeout => 30000;

  @override
  int get connectionTimeout => 30000;

  @override
  bool get enableLogging => true;
  
  @override
  String get flavorName => 'Development';
}

@Environment('prod')
@Singleton(as: DioConfig)
class ProdDioConfigImpl implements DioConfig {
  @override
  String get baseUrl => 'https://yourprodapi.com/api';

  @override
  int get receiveTimeout => 10000;

  @override
  int get connectionTimeout => 10000;

  @override
  bool get enableLogging => false;
  
  @override
  String get flavorName => 'Production';
}