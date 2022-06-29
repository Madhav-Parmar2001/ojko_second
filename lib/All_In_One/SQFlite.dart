import 'package:flutter/material.dart';
import '/(3)%20SQFlite/(3A)SQFlite_HomePage.dart';

class SQFlite extends StatefulWidget {
  @override
  _SQFliteState createState() => _SQFliteState();
}

class _SQFliteState extends State<SQFlite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SQFlite"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(1.0),
        child: ListView(
          children: [
            ListTile(
              title: Text(" SQF lite",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("1"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SqlliteHomePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
