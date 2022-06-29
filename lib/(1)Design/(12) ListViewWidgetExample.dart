import 'package:flutter/material.dart';

class ListviewWidgetExample extends StatefulWidget
{
  @override
  _ListviewWidgetExampleState createState() => _ListviewWidgetExampleState();
}

class _ListviewWidgetExampleState extends State<ListviewWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Madhav Parmar"),
            subtitle: Text("hii Buddy"),
            trailing: Text("5.00 PM"),
            leading: CircleAvatar(
              child: Text("M"),
              backgroundColor: Colors.orange,
            ),
            onLongPress: (){
              print("Thank You");
            },
            onTap: (){
              print("Welcome");
            },
          ),
          Divider(),

          ListTile(
            title: Text("Sahil Parmar"),
            subtitle: Text("hii Buddy"),
            trailing: Text("5.00 PM"),
            leading: CircleAvatar(
              child: Text("M"),
              backgroundColor: Colors.orange,
            ),
            onLongPress: (){
              print("Thank You");
            },
            onTap: (){
              print("Welcome");
            },
          ),
          Divider(),

          ListTile(
            title: Text("Keval Parmar"),
            subtitle: Text("hii Buddy"),
            trailing: Text("5.00 PM"),
            leading: CircleAvatar(
              child: Text("M"),
              backgroundColor: Colors.orange,
            ),
            onLongPress: (){
              print("Thank You");
            },
            onTap: (){
              print("Welcome");
            },
          ),
          Divider(),

          ListTile(
            title: Text("Ashwin Parmar"),
            subtitle: Text("hii Buddy"),
            trailing: Text("5.00 PM"),
            leading: CircleAvatar(
              child: Text("M"),
              backgroundColor: Colors.orange,
            ),
            onLongPress: (){
              print("Thank You");
            },
            onTap: (){
              print("Welcome");
            },
          ),
          Divider(),

          ListTile(
            title: Text("Ashwin Parmar"),
            subtitle: Text("hii Buddy"),
            trailing: Text("5.00 PM"),
            leading: CircleAvatar(
              child: Text("M"),
              backgroundColor: Colors.orange,
            ),
            onLongPress: (){
              print("Thank You");
            },
            onTap: (){
              print("Welcome");
            },
          ),
          Divider(),

          ListTile(
            title: Text("Ashwin Parmar"),
            subtitle: Text("hii Buddy"),
            trailing: Text("5.00 PM"),
            leading: CircleAvatar(
              child: Text("M"),
              backgroundColor: Colors.orange,
            ),
            onLongPress: (){
              print("Thank You");
            },
            onTap: (){
              print("Welcome");
            },
          ),
          Divider(),

          ListTile(
            title: Text("Ashwin Parmar"),
            subtitle: Text("hii Buddy"),
            trailing: Text("5.00 PM"),
            leading: CircleAvatar(
              child: Text("M"),
              backgroundColor: Colors.orange,
            ),
            onLongPress: (){
              print("Thank You");
            },
            onTap: (){
              print("Welcome");
            },
          ),
          Divider(),

          ListTile(
            title: Text("Ashwin Parmar"),
            subtitle: Text("hii Buddy"),
            trailing: Text("5.00 PM"),
            leading: CircleAvatar(
              child: Text("M"),
              backgroundColor: Colors.orange,
            ),
            onLongPress: (){
              print("Thank You");
            },
            onTap: (){
              print("Welcome");
            },
          ),
          Divider(),

          ListTile(
            title: Text("Ashwin Parmar"),
            subtitle: Text("hii Buddy"),
            trailing: Text("5.00 PM"),
            leading: CircleAvatar(
              child: Text("M"),
              backgroundColor: Colors.orange,
            ),
            onLongPress: (){
              print("Thank You");
            },
            onTap: (){
              print("Welcome");
            },
          ),
          Divider(),


        ],
      ),
    );
  }
}
