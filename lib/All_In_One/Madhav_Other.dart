import 'package:flutter/material.dart';
import '/(6)%20Madhav_Other/(11)(B)%20RegistrationForm.dart';
import '/(6)%20Madhav_Other/(14)(B)Mxplayer.dart';
import '/(6)%20Madhav_Other/(16)(A)%20NavigationCalculator1.dart';
import '/(6)%20Madhav_Other/(16)(B)%20NavigatioCalculator2.dart';
import '/(6)%20Madhav_Other/(3)(A)%20ContainerWidgetExample.dart';
import '/(6)%20Madhav_Other/(4)(A)%20CardWidgetExample.dart';
import '/(6)%20Madhav_Other/(5)(B)%20ShopingPage.dart';
import '/(6)%20Madhav_Other/(7)(B)%20Calculator.dart';
import '/(6)%20Madhav_Other/(9)(B)%20RadioArtihmaticExample.dart';


class Madhav_Other extends StatefulWidget {
  _Madhav_OtherState createState() => _Madhav_OtherState();
}

class _Madhav_OtherState extends State<Madhav_Other> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("(5) Madhav Other"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(1.0),
        child: ListView(
          children: [
            ListTile(
              title: Text("ContainerScreenExample",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("1"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ContainerScreenExample()),
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("CardScreenExample",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("2"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CardScreenExample())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("ShopingPage",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("3"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ShopingPage())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("Calculator",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("4"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Calculator())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("RadioArithmaticExample",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("5"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => RadioArithmaticExample())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("RegistrationForm",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("6"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => RegistrationForm())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("MxPlayer",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("7"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MxPlayer())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("NavigationCalculator1",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("8"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => NavigationCalculator1())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("NavigationCalculator2",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("9"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => NavigationCalculator2())
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}
