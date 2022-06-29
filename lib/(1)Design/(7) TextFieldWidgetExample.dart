import 'package:flutter/material.dart';

class TextFieldWidgetExample extends StatefulWidget

{
  @override
  _TextFieldWidgetExampleState createState() => _TextFieldWidgetExampleState();
}

class _TextFieldWidgetExampleState extends State<TextFieldWidgetExample> {

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField Widget"),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 20.0,),
              //Text("Name"),
              TextField(
                controller: name,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "Enter Name",
                  prefix: Icon(Icons.drive_file_rename_outline),
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 20.0,),
              //Text("email"),
              TextField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "email",
                  border: OutlineInputBorder(),
                  hintText: "id@.com",
                  icon: Icon(Icons.email),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.close),
                  ),
                ),
              ),

              SizedBox(height: 20.0,),
              //Text("Mobile Number"),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Mobile Number",
                  prefixIcon: Icon(Icons.confirmation_number_rounded),
                  border: UnderlineInputBorder(),
                ),
              ),

              SizedBox(height: 20.0,),
              Text("Contact Number"),
              TextField(
                keyboardType: TextInputType.phone,
              ),

              SizedBox(height: 20.0,),
              Text("Date & Time"),
              TextField(
                keyboardType: TextInputType.datetime,
              ),

              SizedBox(height: 20.0,),
              Text("Multi Line"),
              TextField(
                keyboardType: TextInputType.multiline,
              ),

              SizedBox(height: 20.0,),
              Text("None"),
              TextField(
                keyboardType: TextInputType.none,
              ),

              SizedBox(height: 20.0,),
              Text("Address"),
              TextField(
                keyboardType: TextInputType.streetAddress,
              ),

              SizedBox(height: 20.0,),
              Text("Text"),
              TextField(
                keyboardType: TextInputType.text,
              ),

              SizedBox(height: 20.0,),
              Text("URL Link"),
              TextField(
                keyboardType: TextInputType.url,
              ),

              SizedBox(height: 20.0,),
              Text("Password"),
              TextField(
                keyboardType: TextInputType.visiblePassword,
              ),

              SizedBox(height: 20.0,),
              GestureDetector(
                onTap: (){
                  var Name = name.text.toString();
                  var Email = email.text.toString();
                  print("Name :"+Name);
                  print("email :"+Email);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  child: Text("Submit",style: TextStyle(color: Colors.white),),
                  color: Colors.red,
                  alignment: Alignment.center,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
