import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  var Valid = GlobalKey<FormState>(); //All

  TextEditingController name = TextEditingController(); //Name
  final RegExp lettersonly = new RegExp(r'^[a-zA-Z" "]+$'); //Name

  TextEditingController Address = TextEditingController(); //Address
  final RegExp letteraddresssonly =
      new RegExp(r'^[a-zA-Z" "!@#$%^&*+*/"--"()_+=0-9]+$'); //Address

  TextEditingController email = TextEditingController(); //email
  final RegExp letteremailonly = new RegExp(r'^[a-zA-Z0-9" "@._]+$'); //email

  TextEditingController number = TextEditingController(); //Number
  final RegExp numbersonly = new RegExp(r'^[0-9]+$'); //Number

  var gender = "male"; // Radio Button
  RadioMethod(value) {
    setState(() {
      gender = value;
    });
  }

  var standard = "I1"; // DropDown (Standard)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Form"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
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

          // Name
          child: Column(
            children: [
              SizedBox(height: 20.0,),
              Form(
                key: Valid,
                child: Column(
                  children: [
                    Container(
                      child: Text("Name"),
                      alignment: AlignmentDirectional.topStart,
                    ),
                    TextFormField(
                      controller: name,
                      keyboardType: TextInputType.name,
                      validator: (val) {
                        if (val.isEmpty) {
                          return ("Enter Name");
                        } else if (!letteraddresssonly.hasMatch(val)) {
                          return "Only Letters Allowed";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        //labelText: "Name",
                        hintText: "Enter Name",
                        prefix: Icon(Icons.arrow_forward_outlined),
                        border: OutlineInputBorder(),
                      ),
                    ),

                    //Address
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: Text("Address"),
                      alignment: AlignmentDirectional.topStart,
                    ),
                    TextFormField(
                      minLines: 2,
                      maxLines: 5,
                      controller: Address,
                      keyboardType: TextInputType.multiline,
                      validator: (vall) {
                        if (vall.isEmpty) {
                          return ("Enter Name");
                        } else if (!letteraddresssonly.hasMatch(vall)) {
                          return "Only Letters Allowed";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        //labelText: "Address",
                        hintText: "Enter Address",
                        prefix: Icon(Icons.arrow_forward_outlined),
                        border: OutlineInputBorder(),
                      ),
                    ),

                    //email
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
                        //labelText: "email",
                        hintText: "Enter email",
                        prefix: Icon(Icons.arrow_forward_outlined),
                        border: OutlineInputBorder(),
                      ),
                    ),

                    //Contact Number
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: Text("Contact Number"),
                      alignment: AlignmentDirectional.topStart,
                    ),
                    TextFormField(
                      controller: number,
                      keyboardType: TextInputType.number,
                      validator: (vall) {
                        if (vall.isEmpty) {
                          return ("Enter email");
                        } else if (!numbersonly.hasMatch(vall)) {
                          return "Only Numbers Allowed";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        //labelText: "Number",
                        hintText: "Enter Contact Number",
                        prefix: Icon(Icons.arrow_forward_outlined),
                        border: OutlineInputBorder(),
                      ),
                    ),

                    //Radio Button
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: Text("Gender"),
                      alignment: AlignmentDirectional.topStart,
                    ),
                    Row(
                      children: [
                        Radio(
                          value: "male",
                          groupValue: gender,
                          activeColor: Colors.red,
                          onChanged: RadioMethod,
                        ),
                        Text("Male"),
                        SizedBox(
                          width: 50.0,
                        ),
                        Radio(
                          value: "female",
                          groupValue: gender,
                          activeColor: Colors.red,
                          onChanged: RadioMethod,
                        ),
                        Text("Female"),
                      ],
                    ),

                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: Text("Standard"),
                      alignment: AlignmentDirectional.topStart,
                    ),
                    Column(
                      children: [
                        DropdownButton(
                          value: standard,
                          dropdownColor: Colors.orange,
                          focusColor: Colors.lightGreenAccent,
                          onChanged: (value) {
                            setState(() {
                              standard = value;
                            });
                          },
                          items: [
                            DropdownMenuItem(
                              child: Text("Item 1"),
                              value: "I1",
                            ),
                            DropdownMenuItem(
                              child: Text("Item 2"),
                              value: "I2",
                            ),
                            DropdownMenuItem(
                              child: Text("Item 3"),
                              value: "I3",
                            ),
                            DropdownMenuItem(
                              child: Text("Item 4"),
                              value: "I4",
                            ),
                            DropdownMenuItem(
                              child: Text("Item 5"),
                              value: "I5",
                            ),
                            DropdownMenuItem(
                              child: Text("Item 6"),
                              value: "I6",
                            ),
                            DropdownMenuItem(
                              child: Text("Item 7"),
                              value: "I7",
                            ),
                            DropdownMenuItem(
                              child: Text("Item 8"),
                              value: "I8",
                            ),
                            DropdownMenuItem(
                              child: Text("Item 9"),
                              value: "I9",
                            ),
                            DropdownMenuItem(
                              child: Text("Item 10"),
                              value: "I10",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              //Raise Button( Submit )
              SizedBox(
                height: 15.0,
              ),
              RaisedButton(
                onPressed: () {
                  // Name
                  var n = name.text.toString();
                  if (Valid.currentState.validate()) {
                    //var n = name.text.toString();
                    print("Name : " + n);
                  }

                  //Address
                  var a = Address.text.toString();
                  if (Valid.currentState.validate()) {
                    //var a = Address.text.toString();
                    print("Address : " + a);
                  }

                  // email
                  var e = email.text.toString();
                  if (Valid.currentState.validate()) {
                    //var e = email.text.toString();
                    print("email : " + e);
                  }

                  // Contact Number
                  var c = number.text.toString();
                  if (Valid.currentState.validate()) {
                    //var c = number.text.toString();
                    print("Contact Number :" + c);
                  }

                  // Radio Button
                  print("Gender : " + gender);

                  //Standard
                  print("Selected : " + standard);
                  print("\n");

                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context)=> AlertDialogBoxWidgetExample())
                  // );
                },
                child: Text("Submit"),
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
