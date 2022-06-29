import 'package:flutter/material.dart';

class Navigation2 extends StatefulWidget
{

  var number1 = "";
  var number2 = "";
  Navigation2(this.number1,this.number2);

  @override
  _Navigation2State createState() => _Navigation2State();
}

class _Navigation2State extends State<Navigation2> {

  var total=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      total = int.parse(widget.number1) + int.parse(widget.number2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Addition Answer Page 2"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20.0,),
          Container(
            height: 25.0,
            width: MediaQuery.of(context).size.width,
            //color: Colors.blue,
            alignment: AlignmentDirectional.topCenter,
            child: Text("Value 1 : "+widget.number1,style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),),
          ),

          SizedBox(height: 20.0,),
          Container(
            height: 25.0,
            width: MediaQuery.of(context).size.width,
            //color: Colors.blue,
            alignment: AlignmentDirectional.topCenter,
            child: Text("Value 2 : "+widget.number2,style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),),
          ),

          SizedBox(height: 20.0,),
          Container(
            height: 25.0,
            width: MediaQuery.of(context).size.width,
            //color: Colors.blue,
            alignment: AlignmentDirectional.topCenter,
            child: Text("Addition Answer : "+total.toString(),style: TextStyle(
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
