// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
        child: Text('Drawer Header'),
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
            ),
            ListTile(
              leading:Icon(
            Icons.blur_circular,
            color: Colors.orangeAccent,
            size: 36.0,
          ),
              title: Text("Ufone"),
            ),
            ListTile(
              leading:Icon(
            Icons.blur_circular,
            color: Colors.blue,
            size: 36.0,
          ),
              title: Text("Telenor"),
            ),
            ListTile(
              leading:Icon(
            Icons.blur_circular,
            color: Colors.greenAccent,
            size: 36.0,
          ),
              title: Text("Zong"),
            ),
            ListTile(
              leading:Icon(
            Icons.blur_circular,
            color: Colors.redAccent,
            size: 36.0,
          ),
              title: Text("Jazz/Warid"),
            ),
          ],
        ),
      ),
      appBar: MyCustomAppBar(
        height: screenHeight / 9,
      ),
      body: Center(
        child: Text("H"),
      ),
    );
  }
}

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  const MyCustomAppBar({
    Key key,
    @required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 40, 15, 0),
      decoration: ShapeDecoration(
          shadows: [
            BoxShadow(
              color: Colors.blueGrey,
              blurRadius: 5.0,
            ),
          ],
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(new Radius.circular(8.0)),
          )),
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: (){
                    Scaffold.of(context).openDrawer();
                  },
                ),
          Text("App"),
          Icon(
            Icons.blur_circular,
            color: Colors.blue,
            size: 36.0,
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}
