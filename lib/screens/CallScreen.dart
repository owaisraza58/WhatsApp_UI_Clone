import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/models/call_model.dart';

class CallsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CallsScreenState();
  }
}

class CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dummyCall.length,
        itemBuilder: (context, i) => Column(children: <Widget>[
              ListTile(
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.grey,
                  backgroundImage: NetworkImage(dummyCall[i].avatar),
                ),
                title: Text(
                  dummyCall[i].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Row(children: <Widget>[
                  Icon(Icons.subdirectory_arrow_left, color: Colors.red),
                  Text(dummyCall[i].time)
                ]),
                trailing: Icon(
                  Icons.call,
                  color: Color.fromRGBO(7, 94, 84, 1.0),
                ),
              )
            ]));
  }
}
