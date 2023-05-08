import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:metodista_app/components/schedules_list.dart';
import 'package:metodista_app/components/drawer_list.dart';
import 'package:metodista_app/components/contribute.dart';

void main() => runApp(MetodistaApp());

class MetodistaApp extends StatelessWidget {
  const MetodistaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return MaterialApp(
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.white,
          secondary: Colors.black,
        ),
        textTheme: theme.textTheme.copyWith(
          headline1: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          headline6: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Color.fromARGB(255, 245, 2, 2),
            size: 32,
          ),
          titleTextStyle: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
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
          child: GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context) => HomePage(),)),
            child: Image.asset(
              'assets/images/logo-horizontal.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.favorite_border_outlined,
              color: Color.fromARGB(255, 245, 2, 2),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => Contribute(),));
            },
            iconSize: 32,
          ),
        ],
      ),
      drawer: DrawerList(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.all(30),
                alignment: Alignment.center,
                child: Text(
                  'Uma Família para pertencer.',
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
              ),
              SchedulesList(),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
