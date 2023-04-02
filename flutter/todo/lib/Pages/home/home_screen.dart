import 'package:flutter/material.dart';
import 'package:todo/constants.dart';
import 'package:todo/pages/home/components/body.dart';

//ORGANIZACION PRIMERA PANTALLA
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
              'https://i.pinimg.com/originals/b5/de/08/b5de08b9050e254b008dcc13d28ac42e.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
  }
}
