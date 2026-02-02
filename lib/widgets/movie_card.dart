import 'package:flutter/material.dart';
import 'package:movie_app/models/Movie.dart';
import 'package:movie_app/screens/movie_details_screen.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MovieDetailsScreen(movie: movie),
          ),
        );
      },
      child: Card(
        clipBehavior:
            Clip.antiAlias, // Ensures the image is clipped to the card's border
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Expanded(
  child: Hero(
    tag: movie.title, 
    child: Image.network(
      movie.imageUrl,
      fit: BoxFit.cover,
    ),
  ),
),

          ],
        ),
      ),
    );
  }
}
