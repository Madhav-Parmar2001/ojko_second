
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'All_In_One/All_In_One.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ojko_Second',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // theme: ThemeData(
      //     primaryColor: Colors.lightBlue,
      //     primarySwatch: Colors.blue,
      //     //scaffoldBackgroundColor: Colors.blue.shade100,
      //     textTheme: const TextTheme(
      //         bodyText2: TextStyle(
      //             color: Colors.purple,
      //             fontFamily: "SourceSerifPro",
      //             fontWeight: FontWeight.w100,
      //             fontStyle: FontStyle.italic
      //         )
      //     ),
      //     floatingActionButtonTheme: FloatingActionButtonThemeData(
      //       backgroundColor: Colors.blue,
      //     )
      // ),
      home: All_In_One(),
    );
  }
}
