import 'package:flutter/material.dart';

class Calculator extends StatefulWidget
{
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  TextEditingController Num1 = TextEditingController();
  TextEditingController Num2 = TextEditingController();

  var Answer = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
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

            SizedBox(height: 15.0,),
            Row(
              children: [
                SizedBox(width: 90.0,),
                GestureDetector(
                  onTap: (){
                    var p1 = Num1.text.toString();
                    var p2 = Num2.text.toString();
                    var Addition = int.parse(p1) + int.parse(p2);
                    setState(() {
                      Answer = Addition.toString();
                    });
                    print("Addition : "+Addition.toString());
                  },
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    color: Colors.orange,
                    child: Text("+",style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                    ),),
                    alignment: AlignmentDirectional.center,
                  ),
                ),

                SizedBox(width: 20.0,),
                GestureDetector(
                  onTap: (){
                    var s1 = Num1.text.toString();
                    var s2 = Num2.text.toString();
                    var Subtraction = int.parse(s1) - int.parse(s2);
                    setState(() {
                      Answer = Subtraction.toString();
                    });
                    print("Subtraction : "+Subtraction.toString());
                  },
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    color: Colors.orange,
                    child: Text("-",style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                    ),),
                    alignment: AlignmentDirectional.center,
                  ),
                ),

                SizedBox(width: 20.0,),
                GestureDetector(
                  onTap: (){
                    var m1 = Num1.text.toString();
                    var m2 = Num2.text.toString();
                    var Multiplication = int.parse(m1) * int.parse(m2);
                    setState(() {
                      Answer = Multiplication.toString();
                    });
                    print("Multiplaication : "+Multiplication.toString());
                  },
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    color: Colors.orange,
                    child: Text("*",style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                    ),),
                    alignment: AlignmentDirectional.center,
                  ),
                ),

                SizedBox(width: 20.0,),
                GestureDetector(
                  onTap: (){
                    var d1 = Num1.text.toString();
                    var d2 = Num2.text.toString();
                    var Division = int.parse(d1) / int.parse(d2);
                    setState(() {
                      Answer = Division.toString();
                    });
                    print("Division : "+Division.toString());
                  },
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    color: Colors.orange,
                    child: Text("/",style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                    ),),
                    alignment: AlignmentDirectional.center,
                  ),
                ),

              ],
            ),
            SizedBox(height: 50.0,),
            Center(
              child: Text("Answer : "+Answer.toString(),style: TextStyle(color: Colors.orange),),
            )
          ],
        ),
      ),
    );
  }
}
