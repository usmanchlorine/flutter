import 'package:firstapp/pages/login_page.dart';
import 'package:firstapp/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/homapage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginPage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        drawerTheme: const DrawerThemeData(
          backgroundColor: Colors.deepPurpleAccent
        ),
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark,
      primarySwatch:Colors.deepPurple),
      routes: {
        MyRoutes.homepage: (context) => const HomePage(),
        MyRoutes.LoginRoute: (context) => const LoginPage()
      },
    );
  }
}
