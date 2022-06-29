import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '(2B)SecurityEnterPin.dart';
import '(2C)SecurityHomePage.dart';

class SecurityNewPin extends StatefulWidget
{
  @override
  _SecurityNewPinState createState() => _SecurityNewPinState();
}

class _SecurityNewPinState extends State<SecurityNewPin>
{

  TextEditingController newpin = TextEditingController();
  TextEditingController confirmpin = TextEditingController();

  checklogin() async
  {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.containsKey("save"))
    {
      Navigator.of(context).pop();
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=>SecurityEnterPin())
      );
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checklogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Security New Pin"),
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
              Text("New Pin"),
              TextField(
                controller: newpin,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefix: Icon(Icons.arrow_forward_ios),
                  border: OutlineInputBorder(),
                  filled: true,
                ),
              ),

              SizedBox(height: 20.0,),
              Text("Confirm Pin"),
              TextField(
                controller: confirmpin,
                keyboardType: TextInputType.number,
                //obscureText: true,
                decoration: InputDecoration(
                  prefix: Icon(Icons.arrow_forward_ios),
                  border: OutlineInputBorder(),
                  filled: true,
                ),
              ),

              SizedBox(height: 20.0,),
              Container(
                alignment: AlignmentDirectional.topCenter,
                child: RaisedButton(
                  child: Text("Proceed"),
                  color: Colors.orange,
                  onPressed: () async{
                    var newpin1 = newpin.text.toString();
                    var confirmpin1 = confirmpin.text.toString();

                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    prefs.setString("NewPin2",newpin1.toString());
                    prefs.setString("ConfirmPin2",confirmpin1.toString());

                    if(newpin1==prefs.getString("NewPin2") && confirmpin1==prefs.getString("ConfirmPin2"))
                    {
                      prefs.setString("save", "yes");

                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>SecurityEnterPin())
                      );
                    }
                    else
                    {
                      print("Invalid New Pin");
                      Fluttertoast.showToast(
                          msg: "Invalid New Pin",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.blue,
                          textColor: Colors.white,
                          fontSize: 12.0
                      );

                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>SecurityHomePage())
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
