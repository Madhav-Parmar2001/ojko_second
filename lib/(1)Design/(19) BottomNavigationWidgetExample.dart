
import 'package:flutter/material.dart';

class BottomNavigationWidgetExample extends StatefulWidget
{
  @override
  _BottomNavigationWidgetExampleState createState() => _BottomNavigationWidgetExampleState();
}

class _BottomNavigationWidgetExampleState extends State<BottomNavigationWidgetExample> {
  var selected=1;

  // tab1()
  // {
  //   return Column(
  //     children: [
  //       Text("Home"),
  //       Text("Home"),
  //       Text("Home"),
  //       Text("Home")
  //     ],
  //   );
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (selected==0)?Text("Home"):(selected==1)?Text("Calls"):(selected==2)?Text("Home"):(selected==3)?Text("Settings"):Text("Home"),
        backgroundColor: (selected==0)?Colors.red:(selected==1)?Colors.blue:(selected==2)?Colors.amber:(selected==3)?Colors.green:Colors.purple,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.grey,
        onTap: (index)
        {
          setState(() {
            selected=index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: "Calls"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            (selected==0)?Text("Home"):Visibility(child: Text(""),visible: false,),
            (selected==1)?Text("Calls"):Visibility(child: Text(""),visible: false,),
            (selected==2)?Text("Home"):Visibility(child: Text(""),visible: false,),
            (selected==3)?Text("Settings"):Visibility(child: Text(""),visible: false,),
          ],
        ),
      ),
    );
  }
}
