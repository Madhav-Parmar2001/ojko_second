import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Madhav"),
      ),

      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Text("1"),
                  Text("4"),
                  Text("7"),
                  Text("*"),
                ],
              ),
              Column(
                children: [
                  Text("2"),
                  Text("5"),
                  Text("8"),
                  Text("0"),
                ],
              ),
              Column(
                children: [
                  Text("3"),
                  Text("6"),
                  Text("9"),
                  Text("#"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
