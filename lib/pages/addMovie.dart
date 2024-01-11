import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/button.dart';

class NewMovie {
  late String title;
  late int releaseYear;
  late String genre;
  late String description;
  late List<String> directors;
  late List<Map<String, dynamic>> cast;
}

class AddMovie extends StatefulWidget {
  const AddMovie({Key? key}) : super(key: key);

  @override
  State<AddMovie> createState() => _AddMovieState();
}

class _AddMovieState extends State<AddMovie> {
  List<TextEditingController> directorControllers = [];
  List<TextEditingController> memberNameControllers = [];
  List<TextEditingController> memberAgeControllers = [];
  List<TextEditingController> memberCountryControllers = [];
  int directorCount = 1;
  int memberCount = 1;

  @override
  void initState() {
    super.initState();
    directorControllers.add(TextEditingController());
    memberNameControllers.add(TextEditingController());
    memberAgeControllers.add(TextEditingController());
    memberCountryControllers.add(TextEditingController());
  }

  @override
  Widget build(BuildContext context) {
    void addDirector() {
      setState(() {
        directorCount++;
        directorControllers.add(TextEditingController());
      });
    }

    void addMember() {
      setState(() {
        memberCount++;
        memberNameControllers.add(TextEditingController());
        memberAgeControllers.add(TextEditingController());
        memberCountryControllers.add(TextEditingController());
      });
    }

    List<int> yearsList = List<int>.generate(
      DateTime.now().year - 1887,
      (index) => DateTime.now().year - index,
    );
    int? selectedYear = yearsList.first;

    String? selectedGenre = 'Action';
    List<String> genreList = [
      'Action',
      'Adventure',
      'Comedy',
      'Drama',
      'Fantasy',
      'Horror',
      'Mystery',
      'Romance',
      'Sci-Fi',
      'Thriller',
    ];

    void main() {
      NewMovie myNewMovie = NewMovie();

      myNewMovie.title = "Inception";
      myNewMovie.releaseYear = 2010;
      myNewMovie.genre = "Sci-Fi";
      myNewMovie.description = "A mind-bending thriller.";
      myNewMovie.directors = ["Christopher Nolan"];
      myNewMovie.cast = [
        {'name': 'Leonardo DiCaprio', 'age': 46, 'country': 'USA'},
        {'name': 'Ellen Page', 'age': 34, 'country': 'Canada'},
      ];

      Map<String, dynamic> movieJson = {
        'title': myNewMovie.title,
        'releaseYear': myNewMovie.releaseYear,
        'genre': myNewMovie.genre,
        'description': myNewMovie.description,
        'directors': myNewMovie.directors,
        'cast': myNewMovie.cast,
      };
    }

    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        backgroundColor: Colors.amber[300],
        title: Text('Add a movie'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(50),
          color: Colors.amber[400],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: 'Title',
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: <Widget>[
                  Text(
                    'Release Year: ',
                    style: TextStyle(),
                  ),
                  DropdownButton<int?>(
                    value: selectedYear,
                    onChanged: (int? newValue) {
                      setState(() {
                        selectedYear = newValue;
                      });
                    },
                    items: yearsList.map<DropdownMenuItem<int?>>((int year) {
                      return DropdownMenuItem<int?>(
                        value: year,
                        child: Text(year.toString()),
                      );
                    }).toList(),
                  ),
                ],
              ),
              SizedBox(height: 16),
              SizedBox(height: 50),
              Button(title: 'Add movie', onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
