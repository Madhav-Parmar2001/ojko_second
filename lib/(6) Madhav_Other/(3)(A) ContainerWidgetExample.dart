import 'package:flutter/material.dart';

class ContainerScreenExample extends StatefulWidget
{
  @override
  ContainerScreenExampleState createState() => ContainerScreenExampleState();
}

class ContainerScreenExampleState extends State<ContainerScreenExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ContainerScreen"),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 1.50,
          width: 400.0,
          //color: Colors.green,
          child: (Text(" Flutter Learning on this Time",style: TextStyle(color: Colors.white),)),
          //padding:EdgeInsets.fromLTRB(50, 50, 50, 50),
          //padding: EdgeInsets.all(login)(60),
          padding: EdgeInsets.only(top: 40, bottom: 30, right: 20, left: 10),
          alignment: Alignment.center,
          margin: EdgeInsets.all(100),
          transform: Matrix4.rotationZ(270.0),
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: Colors.blue,width: 5.0),
              boxShadow: [
                BoxShadow(color: Colors.grey,offset: Offset(10.0,10.0))
              ]
          ),
          ),
        ),
      );
  }
}
