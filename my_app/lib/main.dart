import 'package:flutter/material.dart';

void main() {
  runApp(Whatss());
}

class Whatss extends StatefulWidget {
  @override
  _WhatssState createState() => _WhatssState();
}

class _WhatssState extends State<Whatss> with SingleTickerProviderStateMixin {
  TabController _tController;

  void initState() {
    _tController = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'zelcome',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('WhatsApp'),
          elevation: 0.9,
          backgroundColor: Color(0xff128c7e),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            new IconButton(
              icon: new Icon(
                Icons.more_vert_rounded,
                color: Colors.white,
              ),
            ),
          ],
          bottom: new TabBar(
            controller: _tController,
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.photo_camera),
              ),
              new Tab(
                icon: new Text('DISC.'),
              ),
              new Tab(
                icon: new Text('STATUS'),
              ),
              new Tab(
                icon: new Text('APPELS'),
              ),
            ],
          ),
        ),
        body: new TabBarView(
          controller: _tController,
          children: <Widget>[
            new Scaffold(),
            new Scaffold(
              floatingActionButton: FloatingActionButton(
                child: Icon(Icons.message),
                backgroundColor: Color(0xff25d366),
              ),
            ),
            new Scaffold(
              floatingActionButton: FloatingActionButton(
                child: Icon(Icons.photo_camera),
                backgroundColor: Color(0xff25d366),
              ),
            ),
            new Scaffold(
                body: new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FloatingActionButton(
                  child: Icon(Icons.photo_camera),
                  backgroundColor: Color(0xff25d366),
                ),
                FloatingActionButton(
                  child: Icon(Icons.photo_camera),
                  backgroundColor: Color(0xff25d366),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
