import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '(12) ListViewWidgetExample.dart';
import '(13) GridViewWidgetExample.dart';
class TabActivityVerticalScrollExample extends StatefulWidget
{
  @override
  _TabActivityVerticalScrollExampleState createState() => _TabActivityVerticalScrollExampleState();
}

class _TabActivityVerticalScrollExampleState extends State<TabActivityVerticalScrollExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
          {
            return <Widget>[
              new SliverAppBar(
                title: Text("Tab Activity Vertical Scroll"),
                pinned: true,
                floating: true,
                bottom: TabBar(
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(
                      child: Text("camera"),
                      //icon: Icon(Icons.camera_alt),
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
                    Tab(
                      child: Text("Bollywood"),
                    ),
                    Tab(
                      child: Text("Hollywood"),
                    ),
                  ],
                ),
              )
            ];
          },
          body: TabBarView(
              children: [
                ListviewWidgetExample(),
                GridViewExample(),
                ListviewWidgetExample(),
                GridViewExample(),
                ListviewWidgetExample(),
                GridViewExample(),
                ListviewWidgetExample(),
                GridViewExample(),
              ]
          ),
        ),
      ),
    );
  }
}
