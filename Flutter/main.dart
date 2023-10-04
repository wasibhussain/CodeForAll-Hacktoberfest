//This is a screen of a mobile app which recommends movies

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class Movie {
  final String title;
  final String posterUrl;
  final String genre;
  final int releaseYear;

  Movie(this.title, this.posterUrl, this.genre, this.releaseYear);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: ThemeData(
        primaryColor: const Color(0xFF1E1E1E),
        // accentColor: Color(0xFFED6A5A),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Montserrat',
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Movie> movies = [
    Movie('Inception', 'https://via.placeholder.com/150', 'Sci-Fi', 2010),
    Movie('Interstellar', 'https://via.placeholder.com/150', 'Sci-Fi', 2014),
    Movie('The Dark Knight', 'https://via.placeholder.com/150', 'Action', 2008),
    Movie('The Shawshank Redemption', 'https://via.placeholder.com/150', 'Drama', 1994),
    // Add more movies here
  ];

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Recommendations'),
        backgroundColor: const Color(0xFF1E1E1E),
      ),
      body: Container(
        color: const Color(0xFF121212),
        child: ListView.builder(
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return MovieCard(movie: movies[index]);
          },
        ),
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      margin: const EdgeInsets.all(16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: const Color(0xFF1E1E1E),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.grey[800]!,
                      Colors.grey[900]!,
                    ],
                  ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.movie,
                    size: 50.0,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                movie.title,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 5.0),
              Text(
                'Genre: ${movie.genre}',
                style: const TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              Text(
                'Release Year: ${movie.releaseYear}',
                style: const TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  _showMovieDetails(context);
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black, backgroundColor: const Color(0xFFED6A5A),
                ),
                child: const Text('View Details'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showMovieDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 5.0,
          backgroundColor: Colors.transparent,
          child: contentBox(context),
        );
      },
    );
  }

  Widget contentBox(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            movie.title,
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              movie.posterUrl,
              height: 200.0,
              width: 150.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10.0),
          Text('Genre: ${movie.genre}', style: const TextStyle(fontSize: 18.0, color: Colors.white)),
          Text('Release Year: ${movie.releaseYear}', style: const TextStyle(fontSize: 18.0, color: Colors.white)),
          const SizedBox(height: 10.0),
          Align(
            alignment: Alignment.bottomRight,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close', style: TextStyle(fontSize: 18.0, color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
