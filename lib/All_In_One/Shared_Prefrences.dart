import 'package:flutter/material.dart';
import '/(2)%20Shared_Prefrences/(2A)SecurityNewPin.dart';

class Shared_Prefrences extends StatefulWidget {
  @override
  _Shared_PrefrencesState createState() => _Shared_PrefrencesState();
}

class _Shared_PrefrencesState extends State<Shared_Prefrences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared_Prefrences"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(1.0),
        child: ListView(
          children: [
            ListTile(
              title: Text("Security New Pin",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("1"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SecurityNewPin()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
