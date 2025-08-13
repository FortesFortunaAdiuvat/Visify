import 'package:flutter/material.dart';
import 'screens/movie_list_screen.dart';

void main() {
  runApp(const VisifyApp());
}

class VisifyApp extends StatelessWidget {
  const VisifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Visify',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const MovieListScreen(),
    );
  }
}
