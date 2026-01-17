import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pragma_catbreeds/core/di/network_module.dart';
import 'package:pragma_catbreeds/features/cat_breeds/data/models/cat_breed_model.dart';

abstract class CatBreedDataSource {
  Future<List<CatBreedModel>> getAllCatBreeds();
}

@LazySingleton(as: CatBreedDataSource)
class CatBreedDataSourceImpl implements CatBreedDataSource {
  final Dio _dio;

  CatBreedDataSourceImpl(@Named(catApi) this._dio);

  @override
  Future<List<CatBreedModel>> getAllCatBreeds() async {
    try {
      final result = await _dio.get('/breeds');

      List<dynamic> cats = result.data;

      return cats.map((cat) => CatBreedModel.fromJson(cat)).toList();
    } catch (e) {
      throw Exception('Error al cargar razas: $e');
    }
  }
}
