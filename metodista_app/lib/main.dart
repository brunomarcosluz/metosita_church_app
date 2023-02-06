import 'package:flutter/material.dart';

void main() => runApp(MetodistaApp());

class MetodistaApp extends StatelessWidget {
  const MetodistaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 0,
        title: Container(
          alignment: Alignment.bottomCenter,
          height: 60,
          width: 270,
          child: Image.asset(
            'assets/images/logo-horizontal.png',
            fit: BoxFit.cover,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.favorite_border_outlined,
              color: Color.fromARGB(255, 245, 2, 2),
            ),
            onPressed: () {},
            iconSize: 32,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
