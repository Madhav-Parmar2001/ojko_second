import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldWidgetExample extends StatefulWidget
{
  @override
  _TextFormFieldWidgetExampleState createState() => _TextFormFieldWidgetExampleState();
}

class _TextFormFieldWidgetExampleState extends State<TextFormFieldWidgetExample>
{

  var Valid = GlobalKey<FormState>();
  TextEditingController Name = TextEditingController();
  TextEditingController Phone = TextEditingController();
  final RegExp lettersonly = new RegExp(r'^[a-zA-Z]+$');
  final RegExp numbersonly = new RegExp(r'^[0-9]+$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextFieldFormWidgetExample"),
      ),

      body: SingleChildScrollView(
        child: Form(
          key: Valid,
          child: Column(
            children: [
              //Text("Name"),
              TextFormField(
                controller: Name,
                keyboardType: TextInputType.name,
                // inputFormatters: [ FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]"))],
                validator: (vall){
                  if(vall.isEmpty)
                    {
                      return("Enter Name");
                    }
                  else if(!lettersonly.hasMatch(vall))
                    {
                      return "Only Letters Allowed";
                    }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "Enter Name",
                  prefix: Icon(Icons.drive_file_rename_outline),
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 10.0,),
              //Text("Phone"),
              TextFormField(
                controller: Phone,
                keyboardType: TextInputType.number,
                validator: (vall){
                  if(vall.length<10)
                    {
                      return("Enter 10 Digit only");
                    }
                  else if(vall.length>10)
                    {
                      return("Enter 10 Digit only");
                    }
                  else if(!numbersonly.hasMatch(vall))
                  {
                    return "Only Numbers Allowed";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Number",
                  hintText: "Enter Number",
                  prefix: Icon(Icons.confirmation_number_rounded),
                  border: OutlineInputBorder(),
                ),
              ),

              RaisedButton(
                onPressed: (){
                  if(Valid.currentState.validate())
                  {
                    var n = Name.text.toString();
                    var m = Name.text.toString();
                    print("Name :"+n);
                    print("Number"+m);
                  }
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
