import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '(2C)SecurityHomePage.dart';

class SecurityEnterPin extends StatefulWidget
{
  @override
  _SecurityEnterPinState createState() => _SecurityEnterPinState();
}

class _SecurityEnterPinState extends State<SecurityEnterPin>
{

  TextEditingController enterpin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Security Enter Pin"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20.0,),
              Text("Enter Pin"),
              TextField(
                controller: enterpin,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefix: Icon(Icons.arrow_forward_ios),
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 20.0,),
              Container(
                alignment: AlignmentDirectional.topCenter,
                child: RaisedButton(
                  child: Text("Proceed"),
                  color: Colors.orange,
                  onPressed: () async{
                    var enterpin1 = enterpin.text.toString();
                    SharedPreferences prefs = await SharedPreferences.getInstance();

                    if(enterpin1==prefs.getString("NewPin2"))
                    {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>SecurityHomePage())
                      );
                    }
                    else
                    {
                      print("Invalid Pin!");
                      Fluttertoast.showToast(
                          msg: "Invalid Pin",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 2,
                          backgroundColor: Colors.blue,
                          textColor: Colors.white,
                          fontSize: 12.0
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
