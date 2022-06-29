import 'package:flutter/material.dart';

class HorizontalGridViewExample extends StatefulWidget
{
  @override
  _HorizontalGridViewExampleState createState() => _HorizontalGridViewExampleState();
}

class _HorizontalGridViewExampleState extends State<HorizontalGridViewExample>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal List View Example"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400.0,
              color: Colors.pink,
              margin: EdgeInsets.all(50.0,),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400.0,
              color: Colors.lightBlueAccent,
              margin: EdgeInsets.all(50.0,),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400.0,
              color: Colors.deepPurple,
              margin: EdgeInsets.all(50.0,),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400.0,
              color: Colors.yellow,
              margin: EdgeInsets.all(50.0,),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400.0,
              color: Colors.green,
              margin: EdgeInsets.all(50.0,),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400.0,
              color: Colors.redAccent,
              margin: EdgeInsets.all(50.0,),
            ),
          ],
        ),
      ),
    );
  }
}
