import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/library.dart';
import 'package:flutter_application_1/pages/movie.dart';
import 'package:flutter_application_1/pages/addMovie.dart';

void main() {
  runApp(MaterialApp(initialRoute: '/home', routes: {
    '/home': (context) => Library(),
    '/movie': (context) => Movie(),
    '/addMovie': (context) => AddMovie(),
  }));
}
