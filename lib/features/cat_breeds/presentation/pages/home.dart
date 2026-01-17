import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pragma_catbreeds/features/cat_breeds/presentation/bloc/cat_breed_bloc.dart';
import 'package:pragma_catbreeds/features/cat_breeds/presentation/widgets/cat_card.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("CatBreeds"), centerTitle: true),
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Buscar raza',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              suffixIcon: const Icon(Icons.search),
            ),
          ),
          ),
          Expanded(
            child: BlocBuilder<CatBreedBloc, CatBreedState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const Center(child: Text("Bienvenido")),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  error: (msg) => Center(child: Text("Error: $msg")),
                  loaded: (breeds) {
                    if (breeds.isEmpty) {
                      return const Center(child: Text("No se encontraron razas"));
                    }
                    return ListView.builder(
                      itemCount: breeds.length,
                      itemBuilder: (context, index) {
                        return CatCard(breed: breeds[index]);
                      },
                    );
                  }
                );
              }
              )
          )
        ]
      ),
    );
  }
}