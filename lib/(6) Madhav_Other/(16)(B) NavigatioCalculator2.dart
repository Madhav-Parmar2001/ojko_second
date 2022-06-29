import 'package:flutter/material.dart';

class NavigationCalculator2 extends StatefulWidget
{

  var second1 = "";
  var second2 = "";
  NavigationCalculator2({this.second1,this.second2});

  @override
  _NavigationCalculator2State createState() => _NavigationCalculator2State();
}

class _NavigationCalculator2State extends State<NavigationCalculator2>
{

  var plus = 0;
  var minus = 0;
  var multiply = 0;
  var divide = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      plus = int.parse(widget.second1) + int.parse(widget.second2);
      minus = int.parse(widget.second1) - int.parse(widget.second2);
      multiply = int.parse(widget.second1) * int.parse(widget.second2);
      divide = int.parse(widget.second1) / int.parse(widget.second2);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Column(
        children: [
          // Number 1
          SizedBox(height: 20.0,),
          Container(
            height: 25.0,
            width: MediaQuery.of(context).size.width,
            //color: Colors.blue,
            alignment: AlignmentDirectional.topCenter,
            child: Text(widget.second1,style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),),
          ),

          // Number 2
          SizedBox(height: 20.0,),
          Container(
            height: 25.0,
            width: MediaQuery.of(context).size.width,
            //color: Colors.blue,
            alignment: AlignmentDirectional.topCenter,
            child: Text(widget.second2,style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),),
          ),

          // Addition
          SizedBox(height: 20.0,),
          Container(
            alignment: AlignmentDirectional.topCenter,
            height: 25.0,
            color: Colors.green,
            width: MediaQuery.of(context).size.width,
            child: Text("Addition: "+plus.toString(),style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),),
          ),

          // Subtraction
          SizedBox(height: 20.0,),
          Container(
            alignment: AlignmentDirectional.topCenter,
            height: 25.0,
            color: Colors.green,
            width: MediaQuery.of(context).size.width,
            child: Text("Subtraction : "+minus.toString(),style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),),
          ),

          // Multilplication
          SizedBox(height: 20.0,),
          Container(
            alignment: AlignmentDirectional.topCenter,
            height: 25.0,
            color: Colors.green,
            width: MediaQuery.of(context).size.width,
            child: Text("Multiplication : "+multiply.toString(),style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),),
          ),

          // Division
          SizedBox(height: 20.0,),
          Container(
            alignment: AlignmentDirectional.topCenter,
            height: 25.0,
            color: Colors.green,
            width: MediaQuery.of(context).size.width,
            child: Text("Divition : "+divide.toString(),style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),),
          ),
        ],
      ),
    );
  }
}
