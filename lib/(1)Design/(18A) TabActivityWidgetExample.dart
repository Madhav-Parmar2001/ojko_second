import 'package:flutter/material.dart';
import '(12) ListViewWidgetExample.dart';
import '(13) GridViewWidgetExample.dart';
class TabActivityWidgetExample extends StatefulWidget
{
  @override
  _TabActivityWidgetExampleState createState() => _TabActivityWidgetExampleState();
}

class _TabActivityWidgetExampleState extends State<TabActivityWidgetExample>
{
  @override
  Widget build(BuildContext context)
  {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
          ),
          title: Text("Tab Activity Example"),
          bottom: TabBar(
            //indicatorColor: Colors.amberAccent,
            isScrollable: true,
            labelColor: Colors.limeAccent,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 2,
            // indicator: BoxDecoration(
              // borderRadius: BorderRadius.circular(25.0),
              // color: Colors.greenAccent,
              // image: DecorationImage(
              //   image: AssetImage('images/redmi10prime.jpg'),
              //   fit: BoxFit.fitWidth,
              // ),
            tabs: [
              Tab(
                //child: Text("camera"),
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text("Chats Chats"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                child: Text("Calls"),
              ),
              Tab(
                child: Text("Messenger"),
              ),
              Tab(
                child: Text("Movies"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListviewWidgetExample(),
            GridViewExample(),
            ListviewWidgetExample(),
            GridViewExample(),
            ListviewWidgetExample(),
            GridViewExample(),
          ],
        ),
      ),
    );
  }
}
