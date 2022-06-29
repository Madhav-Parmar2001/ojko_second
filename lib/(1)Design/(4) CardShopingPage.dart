import 'package:flutter/material.dart';

class CardShopingPage extends StatefulWidget
{
  @override
  _CardShopingPageState createState() => _CardShopingPageState();
}

class _CardShopingPageState extends State<CardShopingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Shoping"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 300.0,
                width: 200.0,
                //alignment: Alignment.center,
                child:Card(
                  child: Text("Hello Madhav"),
                  color: Colors.lightBlueAccent,
                  elevation: 100.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


