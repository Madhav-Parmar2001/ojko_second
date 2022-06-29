import 'package:flutter/material.dart';

class CardScreenExample extends StatefulWidget
{
  @override
  CardScreenExampleState createState() => CardScreenExampleState();
}

class CardScreenExampleState extends State<CardScreenExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ContainerScreen"),
      ),
      body: Column(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(10.0),
              child: Card(
                margin: EdgeInsets.all(20.0),
                color: Colors.grey,
                child: Text("Hello"),
                elevation: 20.0,
              ),
            ),
          ],
        ),
      );
  }
}
