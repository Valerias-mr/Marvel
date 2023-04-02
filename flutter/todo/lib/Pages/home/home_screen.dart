import 'package:flutter/material.dart';
import 'package:todo/constants.dart';
import 'package:todo/pages/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return  AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 150),
          child: SizedBox(
            height: 50,
            child: Image.network(
              'https://raw.githubusercontent.com/Marlon-Orrego/Dllo-Movil/main/todov2/assets/images/marvel_logo.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
  }
}
