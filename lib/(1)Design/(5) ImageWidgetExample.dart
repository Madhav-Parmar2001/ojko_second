import 'package:flutter/material.dart';

class ImageWidgetExample extends StatefulWidget
{
  @override
  _ImageWidgetExampleState createState() => _ImageWidgetExampleState();
}

class _ImageWidgetExampleState extends State<ImageWidgetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageWidgetExample"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 300,
          width: 300,
          child: Column(
            children: [
              Expanded(child: Icon(Icons.account_balance,size: 50.0,color: Colors.black,)),
              Expanded(child: Image.network("https://images.pexels.com/photos/736230/pexels-photo-736230.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")),
              Expanded(child: Image.asset("images/large_getstronger1.png"),),
            ],
          ),
        ),
      ),
    );
  }
}
