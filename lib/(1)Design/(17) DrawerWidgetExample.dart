import 'package:flutter/material.dart';
import '(13) GridViewWidgetExample.dart';
class DrawerWidgetExample extends StatefulWidget
{

  @override
  _DrawerWidgetExampleState createState() => _DrawerWidgetExampleState();
}

class _DrawerWidgetExampleState extends State<DrawerWidgetExample> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Text("M"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  child: Text("S"),
                )
              ],
              accountName: Text("Welcome, Madhav"),
              accountEmail: Text("madhavparmar2001@gmail.com"),
            ),

            ListTile(
              leading: Icon(Icons.access_time),
              title: Text("Recent"),
              //trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.alarm_on_outlined),
              title: Text("Offline"),

              //trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.border_inner),
              title: Text("Bin"),
              //trailing: Icon(Icons.arrow_forward_ios_outlined),

            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.backup),
              title: Text("Backups"),
              //trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              //trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.help_outline_rounded),
              title: Text("Help and feedback"),
              //trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.storage_outlined),
              title: Text("Storage"),
              //trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            Divider(),

            Container(
              child: RaisedButton(
                child: Text("Buy storage"),
              ),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  SizedBox(width: 15.0,),
                  Text("Most View Rating"),
                  SizedBox(width: 225.0,),
                  InkWell(
                    child: Text("See More"),
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => GridViewExample())
                      );
                    },
                  ),
                ],
              ),
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
                    color: Colors.lightGreenAccent,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.lightBlueAccent,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.limeAccent,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.cyanAccent,
                    margin: EdgeInsets.all(10.0),
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.tealAccent,
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

          ],
        ),
      ),
    );
  }
}
