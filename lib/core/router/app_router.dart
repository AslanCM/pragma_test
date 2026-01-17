import 'package:go_router/go_router.dart';
import 'package:pragma_catbreeds/features/cat_breeds/domain/entities/cat_breed.dart';
import 'package:pragma_catbreeds/features/cat_breeds/presentation/pages/detail_page.dart';
import 'package:pragma_catbreeds/features/cat_breeds/presentation/pages/home.dart';
import 'package:pragma_catbreeds/features/cat_breeds/presentation/pages/splast_page.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const LandingPage(),
    ),
    GoRoute(
      path: '/details',
      builder: (context, state) {
        final breed = state.extra as CatBreed;
        return DetailPage(breed: breed);
      },
    )
  ],
);
