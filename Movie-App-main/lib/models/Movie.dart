class Movie {
  final String title;
  final String imageUrl;
  final String description;

  // New fields
  final double rating;
  final int releaseYear;
  final int duration; // in minutes
  final String genre;
  final String director;

  Movie({
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.rating,
    required this.releaseYear,
    required this.duration,
    required this.genre,
    required this.director,
  });
}
