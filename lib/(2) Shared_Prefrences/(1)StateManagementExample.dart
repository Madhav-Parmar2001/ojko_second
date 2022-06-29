import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../(1)Design/(6) ButtonWidGetExample.dart';

class StateManagementExample extends StatefulWidget {
  @override
  _StateManagementExampleState createState() => _StateManagementExampleState();
}

class _StateManagementExampleState extends State<StateManagementExample> {
  var Valid = GlobalKey<FormState>(); //All

  TextEditingController email = TextEditingController(); //email
  final RegExp letteremailonly = new RegExp(r'^[a-zA-Z0-9" "@._]+$'); //email
  TextEditingController password = TextEditingController(); //Password

  _setValue() async {
    SharedPreferences state = await SharedPreferences.getInstance();
    print(state.getString("email"));
    print(state.getString("passwoed"));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _setValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Management"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey,
          margin: EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            top: 10.0,
            bottom: 10.0,
          ),
          padding: EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            top: 10.0,
            bottom: 10.0,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 10.0,
              ),
              Form(
                key: Valid,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: Text("email"),
                      alignment: AlignmentDirectional.topStart,
                    ),
                    TextFormField(
                      controller: email,
                      keyboardType: TextInputType.emailAddress,
                      validator: (vall) {
                        if (vall.isEmpty) {
                          return ("Enter email");
                        } else if (!letteremailonly.hasMatch(vall)) {
                          return "Only Letters Allowed";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter email",
                        prefix: Icon(Icons.arrow_forward_outlined),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: Text("Password"),
                      alignment: AlignmentDirectional.topStart,
                    ),
                    TextFormField(
                      obscureText: true,
                      controller: password,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        prefix: Icon(Icons.arrow_forward_outlined),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RaisedButton(
                            onPressed: () async {
                              //email
                              var e = email.text.toString();
                              if (Valid.currentState.validate()) {
                                print("email : " + e);
                              }

                              var p = password.text.toString();
                              print("Password : " +p);

                              SharedPreferences state =
                                  await SharedPreferences.getInstance();
                              state.setString("email", email.text);
                              print(
                                state.getString("email"),
                              );

                              state.setString("password", password.text);
                              print(
                                state.getString("password"),
                              );
                              print("\n");
                            },
                            child: Text("Submit"),
                            color: Colors.orange,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RaisedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ButtonWidget()));
                            },
                            child: Text("New User"),
                            color: Colors.orange,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
