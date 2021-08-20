import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class CameraScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CameraScreenState();
  }
}

class CameraScreenState extends State<CameraScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Text("Camera Screen"),
    ));
  }
}
