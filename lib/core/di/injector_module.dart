import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injector_module.config.dart';

final sl = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: false,
)

Future<void> configureDependencies(String environment) async {
  init(sl, environment: environment);
}