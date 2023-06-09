import 'package:flutter/material.dart';
import 'package:todo/Pages/Details/components/body.dart';
import 'package:todo/models/personaje.dart'; // importamos la clase personaje

//SEGUNDA PANTALLA 
class DetailsScreenP extends StatelessWidget {
final Personaje personaje;

const DetailsScreenP({Key? key, required this.personaje}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 4, 4, 4),
      body: BodyPersonaje(personaje: personaje)

    );
  }
}
