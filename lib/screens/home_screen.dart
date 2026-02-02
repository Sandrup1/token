import 'package:flutter/material.dart';
import 'package:movie_app/models/Movie.dart';
import 'package:movie_app/widgets/movie_card.dart';

final List<Movie> movies = [
  Movie(
    title: "The Dark Knight",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/1/1c/The_Dark_Knight_%282008_film%29.jpg",
    description:
        "Batman faces the Joker, a criminal mastermind who wants to plunge Gotham City into chaos.",
    rating: 9.0,
    releaseYear: 2008,
    duration: 152,
    genre: "Action",
    director: "Christopher Nolan",
  ),
  Movie(
    title: "Inception",
    imageUrl:
        "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_.jpg",
    description:
        "A skilled thief enters people’s dreams to steal secrets, but is given a chance to erase his past by planting an idea deep inside a target’s mind.",
    rating: 8.8,
    releaseYear: 2010,
    duration: 148,
    genre: "Sci-Fi",
    director: "Christopher Nolan",
  ),
  Movie(
    title: "Interstellar",
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkshzpfsh566sD5Im2qzFxaxfNFFqSQAFZgg&s",
    description:
        "A group of astronauts travel through a wormhole in search of a new home for humanity as Earth becomes uninhabitable.",
    rating: 8.7,
    releaseYear: 2014,
    duration: 169,
    genre: "Sci-Fi",
    director: "Christopher Nolan",
  ),
  Movie(
    title: "The Matrix",
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZNl1EYS9z4PfNViNWMK_V5ZspshcWfksobw&s",
    description:
        "The Matrix is a 1999 science fiction action film written and directed by the Wachowskis...",
    rating: 8.7,
    releaseYear: 1999,
    duration: 136,
    genre: "Sci-Fi",
    director: "The Wachowskis",
  ),
  Movie(
    title: "Toy Story",
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd1_9O7ZAMWdim0aZ3AGYpzugvq7EPOdJpHA&s",
    description:
        "Toy Story is a 1995 American animated adventure comedy film produced by Pixar Animation Studios...",
    rating: 8.3,
    releaseYear: 1995,
    duration: 81,
    genre: "Animation",
    director: "John Lasseter",
  ),
  Movie(
    title: "Mr. Robot",
    imageUrl:
        "https://m.media-amazon.com/images/M/MV5BOTg4NTBiZDAtZTc0YS00NzZlLTg4Y2ItNGQ3M2ZlMDM5MWQzXkEyXkFqcGc@._V1_.jpg",
    description:
        "Mr. Robot is an American psychological techno-thriller television series created by Sam Esmail...",
    rating: 8.5,
    releaseYear: 2015,
    duration: 60,
    genre: "Thriller",
    director: "Sam Esmail",
  ),
  Movie(
    title: "Oppenheimer",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/4/4a/Oppenheimer_%28film%29.jpg",
    description:
        "Oppenheimer is a 2023 epic biographical thriller film written and directed by Christopher Nolan...",
    rating: 8.6,
    releaseYear: 2023,
    duration: 180,
    genre: "Biography",
    director: "Christopher Nolan",
  ),
  Movie(
    title: "The Shawshank Redemption",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/8/81/ShawshankRedemptionMoviePoster.jpg",
    description:
        "A banker convicted of uxoricide forms a friendship over a quarter century with a hardened convict...",
    rating: 9.3,
    releaseYear: 1994,
    duration: 142,
    genre: "Drama",
    director: "Frank Darabont",
  ),
  Movie(
    title: "The Godfather",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/1/1c/Godfather_ver1.jpg",
    description:
        "The Godfather is a 1972 American epic gangster film directed by Francis Ford Coppola...",
    rating: 9.2,
    releaseYear: 1972,
    duration: 175,
    genre: "Crime",
    director: "Francis Ford Coppola",
  ),
  Movie(
    title: "The Godfather Part II",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/0/03/Godfather_part_ii.jpg",
    description:
        "The Godfather Part II is a 1974 American epic gangster film produced and directed by Francis Ford Coppola...",
    rating: 9.0,
    releaseYear: 1974,
    duration: 202,
    genre: "Crime",
    director: "Francis Ford Coppola",
  ),
  Movie(
    title: "Pulp Fiction",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/3/3b/Pulp_Fiction_%281994%29_poster.jpg",
    description:
        "Pulp Fiction is a 1994 American independent crime black comedy film written and directed by Quentin Tarantino...",
    rating: 8.9,
    releaseYear: 1994,
    duration: 154,
    genre: "Crime",
    director: "Quentin Tarantino",
  ),
  Movie(
    title: "Predestination",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/4/4b/Predestination_poster.jpg",
    description:
        "Predestination is a 2014 Australian science fiction thriller film written and directed by Michael and Peter Spierig...",
    rating: 7.5,
    releaseYear: 2014,
    duration: 97,
    genre: "Sci-Fi",
    director: "Spierig Brothers",
  ),
];


class HomeScreen extends StatelessWidget {
  final VoidCallback onToggleTheme;

  const HomeScreen({super.key, required this.onToggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movies"),
        centerTitle: true,

        // ✅ REMOVE hardcoded color
        // backgroundColor: ...

        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: onToggleTheme,
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return MovieCard(movie: movies[index]);
        },
      ),
    );
  }
}

/*
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movies"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 1, 226, 251),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return MovieCard(movie: movies[index]);
        },
      ),
    );
  }
}
*/