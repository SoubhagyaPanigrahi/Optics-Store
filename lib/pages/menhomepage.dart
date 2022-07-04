import 'package:flutter/material.dart';
import '../utils/routes.dart';
import '../components/body.dart';

class MenHomepage extends StatelessWidget {
  const MenHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Body(),
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_rounded),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeroute);
              },
              color: Colors.black87,
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
                color: Colors.black87,
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart_rounded),
                onPressed: () {},
                color: Colors.black87,
              )
            ]),
      ),
    );
  }
}
