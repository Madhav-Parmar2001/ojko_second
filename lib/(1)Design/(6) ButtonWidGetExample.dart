import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget
{
  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Widget"),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: (){print("Print");},
        child: Icon(Icons.add_alarm_outlined),
      ),*/

      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          debugPrint("Wifi");
        },
        icon: Icon(Icons.wifi_calling_outlined),
        label: Text("Call"),
        tooltip: "Select Wifi",
      ),

      body: Column(
        children: [
          SizedBox(height: 15.0,),
          FlatButton(
            onPressed: (){print("Flat Button Clicked");},
            child: Text("Flat Button"),
            color: Colors.lightGreenAccent,
            splashColor: Colors.white,
            highlightColor: Colors.purple,
            height: 15.0,
            textColor: Colors.blue,
            //padding: EdgeInsets.all(20.0),
            hoverColor: Colors.green,
            minWidth: 100.0,
          ),

          SizedBox(height: 15.0),
          RaisedButton(
            onPressed: (){debugPrint("Raised Button Clicked");},
            child: Text("Raised Button"),
            color: Colors.yellow,
          ),

          SizedBox(height: 15.0,),
          InkWell(
            onTap: (){print("InkWell Button Clicked");},
            child: Text("InkWell Button"),
            splashColor: Colors.green,
          ),

          // SizedBox(height: 15.0,),
          // OutlineButton(
          //   child: Text("Outline Button"),
          //   onPressed: (){print("Outline Button Clicked");},
          //   color: Colors.deepOrange,
          // ),

          SizedBox(height: 15.0,),
          GestureDetector(
            onTap: (){print("Gesture Detector Clicked");},
            child: Container(
              child: Text("Gesture Detector"),
              height: 50.0,
              width: 50.0,
              color: Colors.purple,
            ),
          ),

          SizedBox(height: 15.0,),
          IconButton(
            tooltip: "Images",
            onPressed: (){print("Icon Button Pressed");},
            icon: Icon(Icons.print),
            color: Colors.lightBlueAccent,
            iconSize: 40.0,
          ),

          SizedBox(height: 15.0,),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
            ),
            onPressed: (){print("Icon Button Pressed");},
            icon: Icon(Icons.open_in_new,color: Colors.white),
            label: Text("open"),
            //icon: Colors.cyanAccent,
            //iconSize: 40.0,
          ),
          
          SizedBox(height: 15.0,),
          TextButton(
            child: Text("Yes"),
            onPressed: (){print("Text Button Pressed");},
          ),

          // SizedBox(height: 15.0,),
          // BackButton(),
          //
          // SizedBox(height: 15.0,),
          // CloseButton(),
          //
          // SizedBox(height: 15.0,),
          // DropdownButton(),
          //
          // SizedBox(height: 15.0,),
          // MaterialButton(),
          //
          // SizedBox(height: 15.0,),
          // PopupMenuButton(),
          //
          // SizedBox(height: 15.0,),
          // RawMaterialButton(),
          //
          // SizedBox(height: 15.0,),
          // BackButtonIcon(),
          //
          // SizedBox(height: 15.0,),
          // TextButton.icon(),
          //
          // SizedBox(height: 15.0,),
          // ToggleButtons(),
          //
          // SizedBox(height: 15.0,),
          // TextSelectionToolbarTextButton(),
          //
        ],
      ),
    );
  }
}
