import 'package:flutter/material.dart';

class TextScreenExample extends StatefulWidget
{
  @override
  TextScreenExampleState createState() => TextScreenExampleState();
}

class TextScreenExampleState extends State<TextScreenExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextScreenExample"),
      ),
      body: (
          Center(
            child: (
              Column(
                //textBaseline: TextBaseline.alphabetic,
                children: [
                  Text("Madhav Hansrajbhai Parmar", style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight:FontWeight.bold,
                    fontSize: 15.0,
                    letterSpacing: 2.0,
                    color: Colors.green,
                    backgroundColor: Colors.red,
                    wordSpacing: 10,
                    height: 10.0,
                  ),),

                  Text("Ramnagar Rander Road Surat", style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight:FontWeight.bold,
                    fontSize: 15.0,
                    letterSpacing: 2.0,
                    color: Colors.green,
                    backgroundColor: Colors.red,
                    wordSpacing: 30,
                  ),),

                  Text("9316288341", style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight:FontWeight.bold,
                    fontSize: 15.0,
                    letterSpacing: 2.0,
                    color: Colors.green,
                    backgroundColor: Colors.red,
                    wordSpacing: 30,
                  ),),
                ],
              )
            ),
          )
      ),
    );
  }
}
