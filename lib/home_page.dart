import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(),
          backgroundColor: Colors.grey,
          body: Container(
            child: Center(
              child: Text("HELLO Home Page"),
            ),
          ),
        )
      ],
    );
  }
}
