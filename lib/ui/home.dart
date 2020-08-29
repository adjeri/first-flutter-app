import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BizCard")
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            _getCard(),
            _getAvatar(),
          ],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(50),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(14.5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Adjeri Kodjiya SABI",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text("Flutter fan"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.person_outline),
              Text("@adjeri")
            ],
          )
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(
          color: Colors.greenAccent,
          width: 1.2,
        ),
        image: DecorationImage(image: NetworkImage("https://picsum.photos/300"),
          fit: BoxFit.cover
        )
      ),
    );
  }
}


class ScaffoldExample extends StatelessWidget {
  _tapButton() {
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
          IconButton(
              icon: Icon(Icons.email),
              onPressed: () => debugPrint("email tapped")),
          IconButton(
            icon: Icon(Icons.access_alarms),
            onPressed: _tapButton,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreen,
        child: Icon(Icons.add),
        onPressed: () => debugPrint("button float"),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.add_circle), title:Text("First")),
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit),title:Text("Second")),
            BottomNavigationBarItem(icon: Icon(Icons.description),title:Text("Third"))
          ],
        onTap: (int index) => debugPrint("Tapped item : $index"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton()
            // Text("Hello again"),
            // InkWell(
            //   child: Text("Tap me!",
            //   style: TextStyle(fontSize: 25),),
            //   onTap: () => debugPrint("tapped..."),
            // )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(
          content: Text("Hello again"),
          backgroundColor: Colors.amber,
        );

        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.pink, borderRadius: BorderRadius.circular(8.0)),
        child: Text(
          "Button",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
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
            fontSize: 25),
      )),
    );
  }
}
