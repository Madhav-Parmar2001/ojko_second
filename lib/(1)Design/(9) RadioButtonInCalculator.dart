import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorWithRadioButton extends StatefulWidget
{
  @override
  _CalculatorWithRadioButtonState createState() => _CalculatorWithRadioButtonState();
}

class _CalculatorWithRadioButtonState extends State<CalculatorWithRadioButton> {

  TextEditingController Num1 = TextEditingController();
  TextEditingController Num2 = TextEditingController();
  var Calculator = " + "; //Group value
  var Answer = "0";

  RadioMethod(value)
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

      body: SingleChildScrollView(
        child: Container(
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


              SizedBox(height: 30.0,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Radio(
                        value: "+",
                        groupValue: Calculator,
                        activeColor: Colors.red,
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

                      Radio(
                        value: "-",
                        groupValue: Calculator,
                        activeColor: Colors.red,
                        onChanged: RadioMethod,
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

                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Radio(
                        value: "*",
                        groupValue: Calculator,
                        activeColor: Colors.red,
                        onChanged: RadioMethod,
                      ),
                      Container(
                        height: 40.0,
                        width: 40.0,
                        color: Colors.orange,
                        child: Text("*",style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,
                        ),),
                        alignment: AlignmentDirectional.center,
                      ),

                      Radio(
                        value: "/",
                        groupValue: Calculator,
                        activeColor: Colors.red,
                        onChanged: RadioMethod,
                      ),
                      Container(
                        height: 40.0,
                        width: 40.0,
                        color: Colors.orange,
                        child: Text("/",style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,
                        ),),
                        alignment: AlignmentDirectional.center,
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20.0,),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 50.0,),
                    RaisedButton(
                      child: Center(
                        child: Text("Result",style: TextStyle(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      onPressed: (){
                        var p1 = Num1.text.toString();
                        var p2 = Num2.text.toString();
                        if (Calculator=="+")
                        {
                          var Addition = int.parse(p1) + int.parse(p2);
                          setState(() {
                            Answer = Addition.toString();
                          });
                        }
                        else if (Calculator=="-")
                        {
                          var Subtraction = int.parse(p1) - int.parse(p2);
                          setState(() {
                            Answer = Subtraction.toString();
                          });
                        }
                        else if (Calculator=="*")
                        {
                          var Multiplication = int.parse(p1) * int.parse(p2);
                          setState(() {
                            Answer = Multiplication.toString();
                          });
                        }
                        else if (Calculator=="/")
                        {
                          var Division = int.parse(p1) / int.parse(p2);
                          setState(() {
                            Answer = Division.toString();
                          });
                        }
                        return null;
                      },


                    ),
                  ],
                ),
              ),

              SizedBox(height: 20,),
              Container(
                alignment: AlignmentDirectional.center,
                child: Text("Answer : "+Answer.toString(),style: TextStyle(color: Colors.orange,fontSize: 30,fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
