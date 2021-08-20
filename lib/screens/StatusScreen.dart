import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/models/StoryPageView.dart';

class StatusScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StatusScreenState();
  }
}

class StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xfff2f2f2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Card(
              color: Colors.white,
              elevation: 0.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Stack(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://www.meme-arsenal.com/memes/b6a18f0ffd345b22cd219ef0e73ea5fe.jpg"),
                      ),
                      Positioned(
                        bottom: 0.0,
                        right: 1.0,
                        child: Container(
                          height: 20,
                          width: 20,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                      )
                    ],
                  ),
                  title: Text(
                    "My Status",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Tap to add status update"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                "Viewed updates",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.white,
                    child: ListView(children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              "https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/wocy4a1ouxda7l3g_1610704906.jpeg"),
                        ),
                        title: Text(
                          "Batman",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("Today, 20:16 PM"),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StoryPageView())),
                      ),
                    ])))
          ],
        ));
  }
}
