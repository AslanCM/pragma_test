import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pragma_catbreeds/core/di/injector_module.dart';
import 'package:pragma_catbreeds/core/router/app_router.dart';
import 'package:pragma_catbreeds/features/cat_breeds/presentation/bloc/cat_breed_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");

  const String environment = String.fromEnvironment('ENV', defaultValue: 'dev');
  await configureDependencies(environment);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<CatBreedBloc>(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'cat breeds',
        theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
        routerConfig: appRouter,
      ),
    );
  }
}
