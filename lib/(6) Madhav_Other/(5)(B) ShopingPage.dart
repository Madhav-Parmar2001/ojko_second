import 'package:flutter/material.dart';

class ShopingPage extends StatefulWidget
{
  @override
  _ShopingPageState createState() => _ShopingPageState();
}

class _ShopingPageState extends State<ShopingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shoping Page"),
      ),
      body: SingleChildScrollView(
        child: (
            Column(
              children: [
                Row(
                    children: [
                      Column(
                        children: [
                          Image.asset("images/redmi10prime.jpg"),
                          Text("Redmi10 Prime"),
                          Text("Price : 12000"),
                        ],
                      ),

                      Column(
                        children: [
                          Image.asset("images/samsungj6.jpg",width: 250.0,),
                          Text("Samsung j6"),
                          Text("Price : 11500"),
                        ],
                      ),
                    ]
                ),

                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset("images/iphone12.jpg",height: 200.0,width: 200.0,),
                        Text("iphone 12"),
                        Text("Price : 80000"),
                      ],
                    ),

                    Column(
                      children: [
                        Image.asset("images/samsungs21.jpeg",width: 200.0,height: 200.0,),
                        Text("Samsung s21"),
                        Text("Price : 65000"),
                      ],
                    ),
                  ],
                ),
              ],
            )
        ),
      ),
    );
  }
}
