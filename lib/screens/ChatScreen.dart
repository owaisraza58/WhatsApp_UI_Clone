import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ChatScreenState();
  }
}

class ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, i) => Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    radius: 25.0,
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(dummyData[i].avatar),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        dummyData[i].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        dummyData[i].time,
                        style: TextStyle(color: Colors.grey, fontSize: 14.0),
                      )
                    ],
                  ),
                  subtitle: Container(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      dummyData[i].message,
                      style: new TextStyle(color: Colors.grey, fontSize: 15.0),
                    ),
                  ),
                )
              ],
            ));
  }
}
