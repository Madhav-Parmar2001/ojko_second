import 'package:flutter/material.dart';

class MxPlayer extends StatefulWidget
{
  @override
  _MxPlayerState createState() => _MxPlayerState();
}

class _MxPlayerState extends State<MxPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MxPlayer In Horizontal Gridview "),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              trailing: Text("See More"),
              leading: Text("MX Top Picks"),
            ),
            Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.deepPurple,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.deepOrange,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.black,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.green,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.yellow,
                    margin: EdgeInsets.all(10.0),
                  ),
                ],
              ),
            ),

            ListTile(
              trailing: Text("See More"),
              leading: Text("Recent"),
            ),
            Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.deepPurple,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.deepOrange,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.black,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.green,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.yellow,
                    margin: EdgeInsets.all(10.0),
                  ),
                ],
              ),
            ),

            ListTile(
              trailing: Text("See More"),
              leading: Text("Latest Movie"),
            ),
            Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.deepPurple,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.deepOrange,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.black,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.green,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.yellow,
                    margin: EdgeInsets.all(10.0),
                  ),
                ],
              ),
            ),

            ListTile(
              trailing: Text("See More"),
              leading: Text("Hindi Dubbed Movie"),
            ),
            Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.deepPurple,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.deepOrange,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.black,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.green,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.yellow,
                    margin: EdgeInsets.all(10.0),
                  ),
                ],
              ),
            ),

            ListTile(
              trailing: Text("See More"),
              leading: Text("Web Series"),
            ),
            Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.deepPurple,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.deepOrange,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.black,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.green,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.yellow,
                    margin: EdgeInsets.all(10.0),
                  ),
                ],
              ),
            ),

            ListTile(
              trailing: Text("See More"),
              leading: Text("MX Series"),
            ),
            Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.deepPurple,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.deepOrange,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.black,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.green,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.yellow,
                    margin: EdgeInsets.all(10.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
