import 'package:flutter/material.dart';
import '(16)(B) NavigatioCalculator2.dart';

class NavigationCalculator1 extends StatefulWidget
{

  @override
  _NavigationCalculator1State createState() => _NavigationCalculator1State();
}

class _NavigationCalculator1State extends State<NavigationCalculator1>
{

  TextEditingController name1 = TextEditingController();
  TextEditingController name2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.0,),
            Text("Name:1",style: TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 15.0,
              color: Colors.black,
              wordSpacing: 30,
            ),),
            TextField(
              controller: name1,
              keyboardType: TextInputType.name,
            ),

            SizedBox(height: 20.0,),
            Text("Name:2",style: TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 15.0,
              color: Colors.black,
              wordSpacing: 30,
            ),),
            TextField(
              controller: name2,
              keyboardType: TextInputType.name,
            ),

            SizedBox(height: 20.0,),
            Container(
              alignment: AlignmentDirectional.topCenter,
              child: RaisedButton(
                child: Text("Submit"),
                color: Colors.green,
                onPressed: (){
                  var first1 = name1.text.toString();
                  var first2 = name2.text.toString();
                  print("Name 1 : "+first1);
                  print("Name 2 : "+first2);

                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>NavigationCalculator2(second1: first1,second2: first2,),)
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
