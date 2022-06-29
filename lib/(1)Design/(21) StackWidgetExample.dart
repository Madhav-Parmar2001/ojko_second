import 'package:flutter/material.dart';

class StackWidgetExample extends StatefulWidget
{
  @override
  _StackWidgetExampleState createState() => _StackWidgetExampleState();
}

class _StackWidgetExampleState extends State<StackWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Example"),
      ),
      body: Stack(
        children: [
          Container(
            width: 500.0,
            height: 500.0,
            color: Colors.pinkAccent,
          ),
          Positioned(
            top: 10.0,
            left: 10.0,
            child: Container(
              child: Icon(Icons.book_sharp),
              width: 60.0,
              height: 60.0,
              color: Colors.orange,
            ),
          ),
          Positioned(
            top: 10.0,
            right: 10.0,
            child: Container(
              width: 60.0,
              height: 60.0,
              color: Colors.orange,
            ),
          ),
          Positioned(
            bottom: 10.0,
            right: 10.0,
            child: Container(
              width: 60.0,
              height: 60.0,
              color: Colors.orange,
            ),
          ),
          Positioned(
            bottom: 10.0,
            left: 10.0,
            child: Container(
              width: 60.0,
              height: 60.0,
              color: Colors.orange,
            ),
          ),
          Positioned(
            top: 80.0,
            right: 80.0,
            child: Container(
              width: 60.0,
              height: 60.0,
              color: Colors.orange,
            ),
          ),
          Positioned(
            top: 80.0,
            left: 80.0,
            child: Container(
              width: 60.0,
              height: 60.0,
              color: Colors.orange,
            ),
          ),
          Positioned(
            bottom: 80.0,
            left: 80.0,
            child: Container(
              width: 60.0,
              height: 60.0,
              color: Colors.orange,
            ),
          ),
          Positioned(
            bottom: 80.0,
            right: 80.0,
            child: Container(
              width: 60.0,
              height: 60.0,
              color: Colors.orange,
            ),
          ),

          Positioned(
            top: 170.0,
            right: 130.0,
            child: Container(
              width: 60.0,
              height: 60.0,
              color: Colors.orange,
            ),
          ),
          Positioned(
            top: 170.0,
            left: 130.0,
            child: Container(
              width: 60.0,
              height: 60.0,
              color: Colors.orange,
            ),
          ),
          Positioned(
            bottom: 170.0,
            left: 130.0,
            child: Container(
              width: 60.0,
              height: 60.0,
              color: Colors.orange,
            ),
          ),
          Positioned(
            bottom: 170.0,
            right: 130.0,
            child: Container(
              width: 60.0,
              height: 60.0,
              color: Colors.orange,
            ),
          ),


        ],
      ),
    );
  }
}
