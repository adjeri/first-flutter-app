
import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {

  _tapButton(){
    debugPrint("tapped button");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold"),
        centerTitle: false,
        backgroundColor: Colors.orange,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.email), onPressed: () => debugPrint("email tapped")),
          IconButton(icon: Icon(Icons.access_alarms), onPressed: _tapButton,)
        ],
      ),
      body: Center(
        child: Text("Hello again"),
      ),
    );
  }
}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepOrange,

      child: Center(
          child: Text(
            "Hello Flutter",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                fontSize: 25
            ),
          )),
    );
  }
}