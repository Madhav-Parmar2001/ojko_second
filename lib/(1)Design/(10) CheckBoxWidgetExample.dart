import 'package:flutter/material.dart';

class CheckBoxWidgetExample extends StatefulWidget
{
  @override
  _CheckBoxWidgetExampleState createState() => _CheckBoxWidgetExampleState();
}

class _CheckBoxWidgetExampleState extends State<CheckBoxWidgetExample>
{

  var checkbox1 = false;
  var checkbox2 = false;
  var checkbox3 = false;
  var checkbox4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChechBoxWidgetExample"),
      ),
      body: Column(
        children: [
          Text("Your Hobbies"),
          SizedBox(height: 15.0,),
          Column(
            children: [
              //Chexkbox1
              Row(
                children: [
                  Checkbox(
                    value: checkbox1,
                    onChanged: (value){
                      setState(() {
                        checkbox1 = value;
                      });
                    },
                  ),
                  Text("Tennis"),
                ],
              ),

              //Chexkbox2
              Row(
                children: [
                  Checkbox(
                    value: checkbox2,
                    onChanged: (value){
                      setState(() {
                      checkbox2 = value;
                      });
                    },
                  ),
                  Text("Cricket"),
                ],
              ),

              //Chexkbox3
              Row(
                children: [
                  Checkbox(
                    value: checkbox3,
                    onChanged: (value){
                      setState(() {
                      checkbox3 = value;
                      });
                    },
                  ),
                  Text("Kho-Kho"),
                ],
              ),

              //Chexkbox4
              Row(
                children: [
                  Checkbox(
                    value: checkbox4,
                    onChanged: (value){
                      setState(() {
                      checkbox4 = value;
                      });
                    },
                  ),
                  Text("Kabaddi"),
                ],
              ),
            ],
          ),

          InkWell(
            child: Text("Submit",style: TextStyle(fontSize: 20.0,color: Colors.white),),
            splashColor: Colors.orange,
            hoverColor: Colors.blueGrey,
            borderRadius: BorderRadius.circular(15.0),
            onTap: (){
              if(checkbox1)
              {
                  print("Checkbox 1 Print");
              }
              if(checkbox2)
              {
                  print("Checkbox 2 Print");
              }
              if(checkbox3)
              {
                  print("Checkbox 3 Print");
              }
              if(checkbox4)
              {
                  print("Checkbox 4 Print");
              }
              //print("Checkbox 1 Checked");
            },
          ),
        ],
      ),
    );
  }
}
