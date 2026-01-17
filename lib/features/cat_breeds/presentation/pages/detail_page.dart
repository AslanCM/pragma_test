import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pragma_catbreeds/features/cat_breeds/domain/entities/cat_breed.dart';

class DetailPage extends StatelessWidget {
  final CatBreed breed;

  const DetailPage({super.key, required this.breed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(breed.name)),
      body: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: const BoxConstraints(
                maxHeight: 450,
                minHeight: 350,
              ),
              width: double.infinity,
              child: breed.imageUrl != null && breed.imageUrl!.isNotEmpty
                  ? CachedNetworkImage(
                      imageUrl: breed.imageUrl!,
                      fit: BoxFit.contain,
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) => const Center(
                        child: Icon(
                          Icons.broken_image,
                          size: 100,
                          color: Colors.red,
                        ),
                      ),
                    )
                  : const Center(
                      child: Icon(Icons.pets, size: 100, color: Colors.grey),
                    ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${breed.description} its temperament is ${breed.temperament}.',
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 16),
                      _infoRow("Pais de origen", breed.origin),
                      _infoRow("Inteligencia", breed.intelligence.toString()),
                      _infoRow("Adaptabilidad", breed.adaptability.toString()),
                      _infoRow("Tiempo de vida", breed.lifeSpan),
                      _infoRow("Afectuosidad", breed.affectionLevel.toString()),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text(value, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
