import 'package:flutter/material.dart';

class BottomSheetWidgetExample extends StatefulWidget
{
  @override
  _BottomSheetWidgetExampleState createState() => _BottomSheetWidgetExampleState();
}

class _BottomSheetWidgetExampleState extends State<BottomSheetWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text("Show Bottpm Sheet"),
        onPressed: (){
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context){
              return Container(
                height: 200.0,
                color: Colors.amber,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children:[
                    Text("Bottom Sheet"),
                    ElevatedButton(
                      child: const Text("Close Sheet"),
                    ),
                  ],
                ),
              );
            }
          );
        },
    );
  }
}

