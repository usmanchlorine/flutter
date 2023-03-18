// ignore_for_file: prefer_const_constructors, duplicate_ignore, avoid_print, sort_child_properties_last
import 'package:firstapp/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  String password = "";
  bool change_button = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()){
      setState(() {
      change_button = true;
    });

    await Future.delayed(Duration(seconds: 1));

    Navigator.pushNamed(
        context, MyRoutes.homepage); // yeh direct us page par lejaigha

    await Future.delayed(Duration(milliseconds:300));
    setState(() {
      change_button = false;
    });


    }

    
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Material(
       
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/2.png",
                  fit: BoxFit.cover,
                  height: 300,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Login",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "username cannot be empty";
                            }
                            return null;
                          },
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
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "password cannot be empty";
                            } else if (value.length < 6) {
                              return "password must be at least 6 characters";
                            }

                            return null;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Enter the password",
                            labelText: "Password",
                          ),
                          onChanged: (value) {
                            password = value;
                          },
                        ),
                        SizedBox(
                          height: 40,
                        ),

                        Material(
                          color: Colors.deepPurple,
                          borderRadius: change_button? BorderRadius.circular(50):BorderRadius.circular(8),
                          child: InkWell(
                            splashColor: Color.fromARGB(255, 255, 44, 223), // splash color material should be ancestor
                            onTap: () => moveToHome(context),
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 500),
                              alignment: Alignment.center,
                              width: change_button ? 50 : 150,
                              height: 50,
                              child: change_button
                                  ? Icon(
                                      Icons.done,
                                      color: Color.fromARGB(255, 250, 250, 249),
                                    )
                                  : Text(
                                      "login",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.2,
                                      ),
                                    ),
                            ),
                          ),
                        ),

                        // ElevatedButton(
                        //   onPressed: () {
                        //     if(name=='usman' && password=='1234'){
                        //       Navigator.pushNamed(
                        //         context,
                        //         MyRoutes
                        //             .homepage); // yeh direct us page par lejaigha

                        //     }

                        //   },
                        //   child: Padding(
                        //     padding: const EdgeInsets.symmetric(
                        //         horizontal: 30, vertical: 10),
                        //     child: Text(
                        //       "Login",
                        //       style: TextStyle(
                        //         fontWeight: FontWeight.bold,
                        //         fontSize: 18,
                        //       ),
                        //     ),
                        //   ),
                        //   style: ElevatedButton.styleFrom(
                        //       minimumSize: Size(100, 20),
                        //       shape: RoundedRectangleBorder(
                        //           borderRadius: BorderRadius.circular(20))),
                        // ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
