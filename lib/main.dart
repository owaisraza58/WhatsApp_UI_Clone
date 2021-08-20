import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/CameraScreen.dart';
import 'package:whatsapp_ui_clone/screens/ChatScreen.dart';
import 'package:whatsapp_ui_clone/screens/StatusScreen.dart';
import 'package:whatsapp_ui_clone/screens/CallScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController? tabController;
  bool showFab = true;

  @override
  void initState() {
    super.initState();

    tabController = TabController(vsync: this, initialIndex: 1, length: 4);
    tabController?.addListener(() {
      if (tabController?.index == 1) {
        showFab = true;
      } else {
        showFab = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "WhatsApp Clone",
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(7, 94, 84, 1.0),
            title: Text("WhatsApp"),
            elevation: 0.7,
            bottom: TabBar(
              controller: tabController,
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(text: "CHATS"),
                Tab(
                  text: "STATUS",
                ),
                Tab(
                  text: "CALLS",
                ),
              ],
            ),
            actions: <Widget>[
              Icon(Icons.search),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
              ),
              Icon(Icons.more_vert)
            ],
          ),
          body: TabBarView(
            controller: tabController,
            children: <Widget>[
              CameraScreen(),
              ChatScreen(),
              StatusScreen(),
              CallsScreen(),
            ],
          ),
          floatingActionButton: showFab
              ? FloatingActionButton(
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                  onPressed: () => print("open chats"),
                )
              : null,
        ));
  }
}
