import 'package:flutter/material.dart';
import '/(1)Design/(1)%20HomeScreen.dart';
import '/(1)Design/(10)%20CheckBoxWidgetExample.dart';
import '/(1)Design/(11)%20DropDownListWidggetExample.dart';
import '/(1)Design/(12)%20ListViewWidgetExample.dart';
import '/(1)Design/(13)%20GridViewWidgetExample.dart';
import '/(1)Design/(14)%20HorizontalGridViewWidgetExample.dart';
import '/(1)Design/(15)(A)%20Navigation1.dart';
import '/(1)Design/(16)%20AlertDialogBoxWidgetExample.dart';
import '/(1)Design/(17)%20DrawerWidgetExample.dart';
import '/(1)Design/(18A)%20TabActivityWidgetExample.dart';
import '/(1)Design/(18B)%20TabActivityVerticalScrollExample.dart';
import '/(1)Design/(19)%20BottomNavigationWidgetExample.dart';
import '/(1)Design/(2)%20TextWIdgetExample.dart';
import '/(1)Design/(20)%20BottomSheetWidgetExample.dart';
import '/(1)Design/(21)%20StackWidgetExample.dart';
import '/(1)Design/(22)%20AppBarWidgetExample.dart';
import '/(1)Design/(23)ExpandedFlexibleExample.dart';
import '/(1)Design/(3)%20ContainerForm.dart';
import '/(1)Design/(4)%20CardShopingPage.dart';
import '/(1)Design/(5)%20ImageWidgetExample.dart';
import '/(1)Design/(6)%20ButtonWidGetExample.dart';
import '/(1)Design/(7)%20TextFieldWidgetExample.dart';
import '/(1)Design/(8)%20TextFormFieldWidgetExample.dart';
import '/(1)Design/(9)%20RadioButtonInCalculator.dart';


class Design extends StatefulWidget{
  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Design"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(1.0),
        child: ListView(
          children: [
            SizedBox(height: 1.0,),
            ListTile(
              title: Text("Home Screen",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("1"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomeScreen())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("Text Widget",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("2"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TextScreenExample())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("Container Form",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("3"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ContainerForm())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("Card Shoping Page",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("4"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CardShopingPage())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("Image Widget",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("5"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ImageWidgetExample())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("Button Widget",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("6"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ButtonWidget())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("TextField Widget",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("7"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TextFieldWidgetExample())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("TextForm Field Widget",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("8"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TextFormFieldWidgetExample())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("Calculator With Radio Button",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("9"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CalculatorWithRadioButton())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("Check Box Widget",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("10"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CheckBoxWidgetExample())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("DropDown List Widget",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("11"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DropDownListWidgetExample())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("Listview Widget",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("12"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ListviewWidgetExample())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("GridView Widget",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("13"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => GridViewExample())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("Horizontal GridView",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("14"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HorizontalGridViewExample())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("Navigation1",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("15A"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Navigation1())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("Alert DialogBox Widget",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("16"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AlertDialogBoxWidgetExample())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("Drawer Widget",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("17"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DrawerWidgetExample())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("Tab Activity Widget",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("18A"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TabActivityWidgetExample())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("Tab Activity Vertical Scroll",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("18B"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TabActivityVerticalScrollExample())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("Bottom Navigation Widget",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("19"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => BottomNavigationWidgetExample())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("BottomSheet Widget",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("20"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => BottomSheetWidgetExample())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("Stack Widget",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("21"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => StackWidgetExample())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("AppBar Widget",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("22"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AppBarWidgetExample())
                );
              },
            ),

            SizedBox(height: 1.0,),
            ListTile(
              title: Text("Expanded and Flexible Widget",style: TextStyle(color: Colors.blue),),
              leading: CircleAvatar(child: Text("23"), backgroundColor: Colors.blue,),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ExpandedFlexibleExample())
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
