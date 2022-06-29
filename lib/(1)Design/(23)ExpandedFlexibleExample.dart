import 'package:flutter/material.dart';

class ExpandedFlexibleExample extends StatefulWidget {

  @override
  _ExpandedFlexibleExampleState createState() => _ExpandedFlexibleExampleState();
}

class _ExpandedFlexibleExampleState extends State<ExpandedFlexibleExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.blue,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              height: 50.0,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
