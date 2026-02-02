import 'package:flutter/material.dart';
import 'package:movie_app/models/Movie.dart';

class MovieDetailsScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailsScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
        backgroundColor: const Color.fromARGB(255, 1, 226, 251),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.network(
                  movie.imageUrl,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),

              Text(
                movie.title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),
              Text(movie.description),

              const SizedBox(height: 16),

              Text("⭐ Rating: ${movie.rating}"),
              Text("📅 Release Year: ${movie.releaseYear}"),
              Text("⏱ Duration: ${movie.duration} min"),
              Text("🎭 Genre: ${movie.genre}"),
              Text("🎬 Director: ${movie.director}"),
            ],
          ),
        ),
      ),
    );
  }
}
