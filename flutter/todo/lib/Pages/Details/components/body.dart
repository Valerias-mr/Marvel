import 'package:flutter/material.dart';
import 'package:todo/constants.dart';
import 'package:todo/models/personaje.dart';


class Body extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // Obtener el tamaño de la pantalla
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: kDefaultPadding / 2),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2,
              horizontal: kDefaultPadding,
            ),
            child: Text(
              "Descripción",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              "Text",
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