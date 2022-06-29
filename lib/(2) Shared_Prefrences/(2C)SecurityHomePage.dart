import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SecurityHomePage extends StatefulWidget
{
  @override
  _SecurityHomePageState createState() => _SecurityHomePageState();
}

class _SecurityHomePageState extends State<SecurityHomePage>
{

  var name="";
  checklogin() async
  {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.containsKey("islogin"))
    {
      setState(() {
        name=prefs.getString("name");
      });
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
        title: Text("Security Home Page"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: (){
              //Navigator.of(context).pop();
              //Navigator.of(context).push(
              //    MaterialPageRoute(builder: (context)=>SecurityEnterPin(),),
              //);
            },
          ),
        ],
      ),
    );
  }
}
