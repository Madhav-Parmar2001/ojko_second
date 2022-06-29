
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '(4B) AddProduct_Firebase.dart';
import '(4C) ViewProduct_Firebase.dart';
import '(4E) AddUser_Firebase.dart';
import '(4F) ViewUser_Firebase.dart';

class Firebase_HomePage extends StatefulWidget
{
  @override
  _Firebase_HomePageState createState() => _Firebase_HomePageState();
}

class _Firebase_HomePageState extends State<Firebase_HomePage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase Home"),
        centerTitle: true,
      ),

      body: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Welcome, Guest!"),
            accountEmail: Text("test@gmail.com"),
          ),
          ListTile(
            leading: Icon(Icons.arrow_forward_ios),
            title: Text("Add Product"),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AddProduct_Firebase(),)
              );
            },
          ),
          Divider(),

          ListTile(
            leading: Icon(Icons.arrow_forward_ios),
            title: Text("View Product"),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ViewProductsFirebase(),)
              );
            },
          ),
          Divider(),

          ListTile(
            leading: Icon(Icons.arrow_forward_ios),
            title: Text("Add User"),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AddUser_Firebase(),)
              );
            },
          ),
          Divider(),

          ListTile(
            leading: Icon(Icons.arrow_forward_ios),
            title: Text("View User"),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ViewUserFirebase(),)
              );
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
