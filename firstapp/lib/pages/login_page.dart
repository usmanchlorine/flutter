// ignore_for_file: prefer_const_constructors, duplicate_ignore, avoid_print, sort_child_properties_last
import 'package:firstapp/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/undraw_Home_run_acyh.png",
                  fit: BoxFit.cover,
                  height: 300,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Login $name",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                        ),
                        onChanged: (value) {
                          
                          setState(() {
                            name = value;
                          });
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter the password",
                          labelText: "Password",
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context,
                              MyRoutes
                                  .homepage); // yeh direct us page par lejaigha
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(100, 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
