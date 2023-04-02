import 'package:flutter/material.dart';
import 'package:todo/constants.dart';
import 'package:todo/models/personaje.dart';
import 'package:todo/routers/conectiondb.dart';
import 'personaje_carousel.dart';

//PRIMERA PANTALLA
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Personaje>>(
      future: getMarvelCharacters(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final personajes = snapshot.data!;
          return SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: kDefaultPadding),
                CharacterCarousel(personajes: personajes),
              ],
            ),
          );
        } else if (snapshot.hasError) {
          return Center(child: Text("${snapshot.error}"));
        }
        // By default, show a loading spinner
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
