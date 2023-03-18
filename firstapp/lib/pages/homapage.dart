// ignore_for_file: avoid_unnecessary_containers

import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(widthFactor: 2.5,child: Text("CricExpert",style: TextStyle(
            wordSpacing: 2,
            letterSpacing: 1,
            
            ),
          )
        ),
      ),
      body: Center(
        child: Container(
          child: const Text("Welcome to days of flutter by usman"),
        ),
      ),
      drawer: const Drawer(
   
      ),
    );
  }
}
