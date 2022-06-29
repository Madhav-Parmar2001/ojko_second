import 'package:flutter/material.dart';

class ContainerForm extends StatefulWidget
{
  @override
  ContainerFormState createState() => ContainerFormState();
}

class ContainerFormState extends State<ContainerForm>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Practice Example",style: TextStyle(
          fontStyle: FontStyle.italic,

        ),),
      ),
      body: Column(
              children: [
                Container(
                    color: Colors.blue,
                    //height: 70.0,
                    //width: 200.0,
                    margin: EdgeInsets.only(top: 20.0, bottom: 10.0, left: 10.0, right: 10.0),
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text("Personal Information",style: TextStyle(
                          color:  Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w200,
                          wordSpacing: 5.0,
                        ),),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text("Name"),
                                Text("Contact Number"),
                                Text("email"),
                              ],
                            ),
                            Column(
                              children: [
                                Text(": ________"),
                                Text(": ________"),
                                Text(": ________"),
                              ],
                            )
                          ],
                        )
                      ],
                    )
                ),

                Container(
                  color: Colors.green,
                  //height: 250.0,
                  //width: 250.0,
                  margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text("Address Information"),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text("Residential"),
                              Text("City"),
                              Text("State"),
                              Text("Pin Code"),
                            ],
                          ),
                          Column(
                            children: [
                              Text(": ________"),
                              Text(": ________"),
                              Text(": ________"),
                              Text(": ________"),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
    );
  }
}



