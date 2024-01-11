import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/button.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    void openAddMovie() {
      Navigator.pushNamed(context, '/addMovie');
    }

    void openMovie() {
      Navigator.pushNamed(context, '/movie');
    }

    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Movie Library'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.blue[100],
        ),
        body: SafeArea(
            child: Container(
          color: Colors.deepPurple[800],
          child: Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Column(children: <Widget>[
              Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Button(
                      title: 'Add a movie to your library ',
                      onPressed: openAddMovie)),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(bottom: 30),
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: NetworkImage(
                                  'https://m.media-amazon.com/images/I/71niXI3lxlL._AC_UF1000,1000_QL80_.jpg'),
                              width: 300,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Title',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Year',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.thumb_up_alt_sharp,
                                      color: Colors.lightBlueAccent,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '57',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 50),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.comment, color: Colors.white),
                                    SizedBox(width: 5),
                                    Text(
                                      '21',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Button(title: 'Go to movie', onPressed: openMovie)
                          ],
                        )),
                  ],
                ),
              ),
            ]),
          ),
        )));
  }
}
