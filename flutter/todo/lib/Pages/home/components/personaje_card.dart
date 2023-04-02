import 'package:flutter/material.dart';
import 'package:todo/Pages/Details/Details_screen.dart';
import 'package:todo/models/personaje.dart';
import '../../../constants.dart';

class PersonajeCard extends StatelessWidget {
  final Personaje personaje;
  const PersonajeCard({Key? key, required this.personaje}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsScreenP(personaje: personaje),
            ),
          );
        },
        child: Card(
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(personaje.image),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(personaje.name,
                        style: Theme.of(context).textTheme.headline6),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
