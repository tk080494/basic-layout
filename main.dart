import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(brightness: Brightness.dark, primaryColor: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(
            title: Text('demo '),
            backgroundColor: Colors.white,),
        body: Center(
          child: Stack(
            children: [
              Container(
                width: 400,
                height: 400,
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
                  child: Text(
                    'Body',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
                  child: Text(
                    'Body 2',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.8, 0.5),
                      colors: [
                        const Color(0xffee0000),
                        const Color(0xffeeee00)
                      ]),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: ('Business'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: ('school'),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.indigo,
                ),
                child: Text(
                  'Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.ac_unit),
                title: Text('account'),
              ),
              ListTile(
                leading: Icon(Icons.face),
                title: Text('face'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
