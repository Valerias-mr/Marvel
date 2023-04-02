import 'package:flutter/material.dart';
import 'package:todo/constants.dart';
import 'package:todo/models/personaje.dart';

import 'backdrop_rating.dart';

class BodyPersonaje extends StatelessWidget {
  final Personaje personaje;

  const BodyPersonaje({Key? key, required this.personaje}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    // Obtener el tamaño de la pantalla
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BackdropAndRating(size: size, personaje: personaje),
          SizedBox(height: kDefaultPadding),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding,
              horizontal: kDefaultPadding,
            ),
            child: Text(
              personaje.name,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              personaje.description.isEmpty
                  ? "Este personaje no tiene descripción"
                  : personaje.description,
              style: TextStyle(
                color: Color(0xFF737599),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding,
              horizontal: kDefaultPadding,
            ),
            child: Text(
              "Primeras 3 Series",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: personaje.firstThreeSeriesNames.isEmpty
                ? Text(
                    "No tiene series",
                    style: TextStyle(
                      color: Color(0xFF737599),
                    ),
                  )
                : Text(
                    "${personaje.firstThreeSeriesNames.take(3).join('\n')}",
                    style: TextStyle(
                      color: Color(0xFF737599),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
