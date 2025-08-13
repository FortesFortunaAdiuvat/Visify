import 'package:flutter/material.dart';

import '../data/mock_movies.dart';
import '../models/movie.dart';
import 'movie_detail_screen.dart';

class MovieListScreen extends StatelessWidget {
  const MovieListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Movie Catalog')),
      body: ListView.builder(
        itemCount: mockMovies.length,
        itemBuilder: (context, index) {
          final Movie movie = mockMovies[index];
          return ListTile(
            leading: Image.network(
              movie.posterUrl,
              width: 50,
              fit: BoxFit.cover,
            ),
            title: Text(movie.title),
            subtitle: Text('${movie.year}'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => MovieDetailScreen(movie: movie),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
