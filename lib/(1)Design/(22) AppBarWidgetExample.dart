import 'package:flutter/material.dart';

class AppBarWidgetExample extends StatefulWidget
{
  @override
  _AppBarWidgetExampleState createState() => _AppBarWidgetExampleState();
}

class _AppBarWidgetExampleState extends State<AppBarWidgetExample> {
  get handalClick => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
        leading: Icon(Icons.home_filled),
        actions: [
          PopupMenuButton(
            onSelected: (val){
              if(val=="Login")
                {
                  print("Login");
                }
              else if(val=="Settings")
              {
                print("Setting");
              }
              else if(val=="About Us")
              {
                print("About Us");
              }
            },
            itemBuilder: (BuildContext context){
              return {"Login","Settings","About Us"}.map((String choice) {
                return PopupMenuItem(
                  value:choice,
                  child: Text(choice)
                );
              }).toList();
            },
          )
        ],
      ),
    );
  }
}
