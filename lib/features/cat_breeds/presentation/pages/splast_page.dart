import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pragma_catbreeds/features/cat_breeds/presentation/bloc/cat_breed_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    context.read<CatBreedBloc>().add(const CatBreedEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CatBreedBloc, CatBreedState>(
      listener: (context, state) {
        state.whenOrNull(
          loaded: (_) => context.go('/home'),
          error: (_) => context.go('/home'),
        );
      },
      child: Scaffold(
        backgroundColor: const Color(0xFF5FD1FD),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'CatBreeds',
                style: GoogleFonts.poppins(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30),
              Image.asset(
                'assets/images/splash_cat_breed.gif',
                width: 300,
                height: 400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
