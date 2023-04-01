import 'package:flutter/material.dart';
import 'package:todo/constants.dart';
import 'package:todo/pages/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: kDefaultPadding),
        icon: Icon(
          Icons.menu,
          color: Colors.white,
          size: 20,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          icon: Icon(
            Icons.search,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
