import 'package:flutter/material.dart';
import '/(4)%20FireBase/(4A)%20FireBase_Home.dart';
class FireBase extends StatefulWidget {
  _FireBaseState createState() => _FireBaseState();
}

class _FireBaseState extends State<FireBase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("(4) FireBase"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(1.0),
        child: ListView(
          children: [
            ListTile(
              title: Text("(4) FireBase ",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("1"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Firebase_HomePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
