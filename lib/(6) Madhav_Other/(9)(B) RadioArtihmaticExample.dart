import 'package:flutter/material.dart';

class RadioArithmaticExample extends StatefulWidget
{
  @override
  _RadioArithmaticExampleState createState() => _RadioArithmaticExampleState();
}

class _RadioArithmaticExampleState extends State<RadioArithmaticExample> {

  TextEditingController Num1 = TextEditingController();
  TextEditingController Num2 = TextEditingController();
  var Calculator = "+";
  var Answer = "0";

  RadioMethod(value)
  {
    setState(() {
      Calculator = value;
      var p1 = Num1.text.toString();
      var p2 = Num2.text.toString();
      var Addition = int.parse(p1) + int.parse(p2);
      setState(() {
        Answer = Addition.toString();
      });
    });
  }

  RadioMethod1(value)
  {
    setState(() {
      Calculator = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator in RadioButton Example"),
      ),

      body: Container(
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0,bottom: 10.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 15.0,),
            TextField(
              controller: Num1,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.subdirectory_arrow_right),
                labelText: "Enter First Number",
                border: UnderlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),

            SizedBox(height: 15.0,),
            TextField(
              controller: Num2,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.subdirectory_arrow_right),
                labelText: "Enter Second Number",
                border: UnderlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),

            Container(
              child: Row(
                children: [
                  SizedBox(width: 90.0,),
                  Radio(
                    activeColor: Colors.red,
                    value: "+",
                    groupValue: Calculator,
                    onChanged: RadioMethod,
                  ),
                  Container(
                    height: 40.0,
                    width: 40.0,
                    color: Colors.orange,
                    child: Text("+",style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                    ),),
                    alignment: AlignmentDirectional.center,
                  ),

                  SizedBox(width: 90.0,),
                  Radio(
                    activeColor: Colors.red,
                    value: "-",
                    groupValue: Calculator,
                    onChanged: RadioMethod1,
                  ),
                  Container(
                    height: 40.0,
                    width: 40.0,
                    color: Colors.orange,
                    child: Text("-",style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                    ),),
                    alignment: AlignmentDirectional.center,
                  ),
                ],
              ),
            ),

            SizedBox(width: 100.0,height: 50.0,),
            RaisedButton(
              onPressed: (){
                var p1 = Num1.text.toString();
                var p2 = Num2.text.toString();
                if(Calculator=="+")
                {
                  var Addition = int.parse(p1) + int.parse(p2);
                  setState(() {
                    Answer = Addition.toString();
                  });
                }
                else if(Calculator=="-")
                {
                  var subtration = int.parse(p1) - int.parse(p2);
                  setState(() {
                    Answer = subtration.toString();
                  });
                }

              },
              child: Text("Result",style: TextStyle(color: Colors.orange),),
            ),
            Text("Answer : "+Answer.toString(),style: TextStyle(color: Colors.orange),),
          ],
        ),
      ),
    );
  }
}
