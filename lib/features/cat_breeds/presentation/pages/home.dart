import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pragma_catbreeds/features/cat_breeds/presentation/bloc/cat_breed_bloc.dart';
import 'package:pragma_catbreeds/features/cat_breeds/presentation/widgets/cat_card.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final ScrollController _scrollController = ScrollController();
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<CatBreedBloc>().add(const CatBreedEvent.loadMore());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    return currentScroll >= (maxScroll * 0.9);
  }

  void _onSearchChanged(String query, BuildContext context) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 600), () {
      context.read<CatBreedBloc>().add(CatBreedEvent.search(query));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("CatBreeds"), centerTitle: true),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Buscar raza',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                suffixIcon: const Icon(Icons.search),
              ),
              onChanged: (value) => _onSearchChanged(value, context),
            ),
          ),
          Expanded(
            child: BlocBuilder<CatBreedBloc, CatBreedState>(
              builder: (context, state) {
                return state.when(
                  initial: () =>
                      const Center(child: CircularProgressIndicator()),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (msg) => _error(context, msg),
                  loaded:
                      (
                        breeds,
                        page,
                        hasReachedMax,
                        currentQuery,
                        isLoadingMore,
                      ) {
                        if (breeds.isEmpty) {
                          return const Center(
                            child: Text("No se encontraron razas"),
                          );
                        }
                        return RefreshIndicator(
                          onRefresh: () async {
                            context.read<CatBreedBloc>().add(
                              const CatBreedEvent.started(),
                            );
                          },
                          child: ListView.builder(
                            controller: _scrollController,
                            itemCount: breeds.length + (isLoadingMore ? 1 : 0),
                            itemBuilder: (context, index) {
                              if (index < breeds.length) {
                                return CatCard(breed: breeds[index]);
                              } else {
                                return const Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                );
                              }
                            },
                          ),
                        );
                      },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _error(BuildContext context, String message) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.wifi_off_rounded, size: 80, color: Colors.grey),
            const SizedBox(height: 18),
            const Text(
              "¡Ups! Ocurrió un error",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              "Por favor revisa tu conexión a internet o comunicate con nosotros. \n$message",
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(height: 30),
            FilledButton.icon(
              icon: const Icon(Icons.refresh),
              label: const Text("Reintentar"),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Color(0xFF5FD1FD)),
              ),
              onPressed: () {
                context.read<CatBreedBloc>().add(const CatBreedEvent.started());
              },
            ),
          ],
        ),
      ),
    );
  }
}
