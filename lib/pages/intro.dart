import 'package:flutter/material.dart';
import '../utils/routes.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Select your gender :'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.menroute);
                },
                child: Image.asset(
                  'assets/images/men.jpg',
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.womenroute);
                },
                child: Image.asset(
                  'assets/images/women.jpg',
                  height: 300,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
