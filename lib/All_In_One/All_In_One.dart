import 'package:flutter/material.dart';
import '../(4) FireBase/(4A) FireBase_Home.dart';
import 'Design.dart';
import 'Madhav_Other.dart';
import 'SQFlite.dart';
import 'Shared_Prefrences.dart';

class All_In_One extends StatefulWidget
{
  @override
  _All_In_OneState createState() => _All_In_OneState();
}

class _All_In_OneState extends State<All_In_One> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All_In_One"),
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
          ],
        ),
      ),

      body: ListView(
        children: [
          ListTile(
            title: Text("(1) Design"),
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Design()),
              );
            },
          ),
          Divider(),

          ListTile(
            title: Text("(2) Shared_Prefrences"),
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) =>Shared_Prefrences()),
              );
            },
          ),
          Divider(),

          ListTile(
            title: Text("(3) SQF lite"),
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) =>SQFlite()),
              );
            },
          ),
          Divider(),

          ListTile(
            title: Text("(4) FireBase"),
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) =>Firebase_HomePage()),
              );
            },
          ),
          Divider(),

          // ListTile(
          //   title: Text("(5) Rest API"),
          //   onTap: (){
          //     Navigator.of(context).push(
          //       MaterialPageRoute(builder: (context) =>API_Home()),
          //     );
          //   },
          // ),
          // Divider(),



          ListTile(
            title: Text("(5) Madhav Other"),
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) =>Madhav_Other()),
              );
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
