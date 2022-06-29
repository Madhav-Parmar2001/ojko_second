import 'package:flutter/material.dart';

import '(3B) AddProduct_SQFlite.dart';
import '(3C) ViewProduct_SQFlite.dart';
import '(3E) AddUser_SQFlite.dart';
import '(3F) ViewUser_SQFlite.dart';


class SqlliteHomePage extends StatefulWidget
{
  @override
  _SqlliteHomePageState createState() => _SqlliteHomePageState();
}

class _SqlliteHomePageState extends State<SqlliteHomePage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("SQFlite Home"),
      ),

      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.arrow_forward_ios),
            title: Text("Add Product"),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AddProduct(),)
              );
            },
          ),
          Divider(),

          ListTile(
            leading: Icon(Icons.arrow_forward_ios),
            title: Text("View Product"),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ViewProduct(),)
              );
            },
          ),
          Divider(),

          ListTile(
            leading: Icon(Icons.arrow_forward_ios),
            title: Text("Add User"),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AddUser(),)
              );
            },
          ),
          Divider(),

          ListTile(
            leading: Icon(Icons.arrow_forward_ios),
            title: Text("View User"),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ViewUser())
              );
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
