import 'package:flutter/material.dart';
import 'package:todo/models/personaje.dart';
import 'package:todo/models/personaje.dart';
import 'package:todo/pages/details/details_screen.dart';
import '../../../constants.dart';

class PersonajeCard extends StatelessWidget {
  final Personaje personaje;
  const PersonajeCard({Key? key, required this.personaje}) :super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: GestureDetector(
        onTap: () {
          /*Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsScreen(Personaje: Personaje),
            ),
          );*/
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
                      fit: BoxFit.cover,
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
                    SizedBox(height: kDefaultPadding / 2),
                    Row(
                      children: [
                        Icon(
                          Icons.menu_book,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(width: kDefaultPadding / 2),
                        Text(
                          "${personaje.comicsCount} comics",
                          style: Theme.of(context).textTheme.caption,
                        )
                      ],
                    ),
                    SizedBox(height: kDefaultPadding / 4),
                    Row(
                      children: [
                        Icon(
                          Icons.tv_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(width: kDefaultPadding / 2),
                        Text(
                          "${personaje.seriesCount} series",
                          style: Theme.of(context).textTheme.caption,
                        )
                      ],
                    ),
                    SizedBox(height: kDefaultPadding / 4),
                    Row(
                      children: [
                       Icon(
                          Icons.all_inclusive_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(width: kDefaultPadding / 2),
                        Text(
                          "${personaje.storiesCount} stories",
                          style: Theme.of(context).textTheme.caption,
                        )
                      ],
                    ),
                    SizedBox(height: kDefaultPadding / 4),
                    Row(
                      children: [
                       Icon(
                          Icons.event_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(width: kDefaultPadding / 2),
                        Text(
                          "${personaje.eventsCount} events",
                          style: Theme.of(context).textTheme.caption,
                        )
                      ],
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Text(
                      personaje.description,
                      style: Theme.of(context).textTheme.caption,
                    ),
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
