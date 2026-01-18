import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pragma_catbreeds/features/cat_breeds/domain/entities/cat_breed.dart';

class CatCard extends StatelessWidget {
  final CatBreed breed;

  const CatCard({super.key, required this.breed});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  breed.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                TextButton(
                  onPressed: () => context.push('/details', extra: breed),
                  child: const Text("Más..."),
                ),
              ],
            ),
          ),
          _catImage(breed),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Pais: ${breed.origin}"),
                Text("Inteligencia: ${breed.intelligence}"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _catImage(CatBreed breed) {
    if (breed.imageUrl != null && breed.imageUrl!.isNotEmpty) {
      return SizedBox(
        height: 350,
        width: double.infinity,
        child: Hero(
          tag: breed.id,
          child: CachedNetworkImage(
            imageUrl: breed.imageUrl!,
            fit: BoxFit.contain,
            placeholder: (context, url) => Container(
              color: const Color(0xFF5FD1FD),
              child: const Center(child: CircularProgressIndicator.adaptive()),
            ),
            errorWidget: (context, url, error) => const Center(
              child: Icon(Icons.broken_image, size: 60, color: Colors.red),
            ),
          ),
        ),
      );
    } else {
      return SizedBox(
        height: 250,
        child: const Center(
          child: Icon(Icons.pets, size: 60, color: Colors.grey),
        ),
      );
    }
  }
}
