import 'package:flutter/material.dart';
import 'package:specsshop/pages/login.dart';
import 'package:specsshop/utils/routes.dart';
import './pages/intro.dart';
import 'pages/menhomepage.dart';
import 'pages/womenhomepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      routes: {
        MyRoutes.menroute: (context) => MenHomepage(),
        MyRoutes.womenroute: (context) => WomenHomepage(),
        MyRoutes.homeroute: (context) => Intro(),
      },
    );
  }
}
