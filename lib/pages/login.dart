import 'package:flutter/material.dart';
import 'package:specsshop/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool onChanged = false;
  final _formkey = GlobalKey<FormState>();

  movetoHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        onChanged = true;
      });
      await Future.delayed(const Duration(seconds: 2));
      await Navigator.pushNamed(context, MyRoutes.homeroute);
      setState(() {
        onChanged = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/undraw_welcome_cats_thqn.png",
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Type Name", labelText: "Enter Name"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Type Password",
                            labelText: "Enter Password"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password length too short";
                          }
                          return null;
                        }),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Material(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(onChanged ? 50 : 0),
                child: InkWell(
                  onTap: () => movetoHome(context),
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    width: onChanged ? 50 : 100,
                    height: 50,
                    alignment: Alignment.center,
                    child: onChanged
                        ? const Icon(Icons.done, color: Colors.black)
                        : const Text(
                            'Login',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
