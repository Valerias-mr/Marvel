import 'package:flutter/material.dart';
import 'package:todo/constants.dart';
import 'package:todo/models/personaje.dart';
import 'informacion.dart';


//MUESTRA DESCRIPCION Y TRES PRIMERAS SERIES
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
              vertical: kDefaultPadding ,
              horizontal: kDefaultPadding,
            ),
            child: Text(
              personaje.name,
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: Theme.of(context).textTheme.headline5!.fontSize,
                fontWeight: Theme.of(context).textTheme.headline5!.fontWeight,
              ),             
              
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              //Validacion descripcion
              personaje.description.isEmpty
                  ? "This character does not have a description"
                  : personaje.description,
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 2.0),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding,
              horizontal: kDefaultPadding,
            ),
            child: Text(
              "First three series",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: Theme.of(context).textTheme.headline5!.fontSize,
                fontWeight: Theme.of(context).textTheme.headline5!.fontWeight,
              ),             
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: personaje.firstThreeSeriesNames.isEmpty
                //Validacion series
                ? Text(
                    "No tiene series",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  )
                : Text(
                    "${personaje.firstThreeSeriesNames.take(3).join('\n')}",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
