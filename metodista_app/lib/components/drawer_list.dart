import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:metodista_app/main.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 60,
            width: 120,
            margin: EdgeInsets.all(50),
            //margin: EdgeInsets.fromLTRB(40, 0, 40, 40),
            //padding: EdgeInsets.fromLTRB(40, 0, 40, 40),
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/logo-horizontal.png',
              //fit: BoxFit.cover,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.info,
              color: Color.fromARGB(255, 245, 2, 2),
            ),
            title: Text(
              'Sobre Nós',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.people,
              color: Color.fromARGB(255, 245, 2, 2),
            ),
            title: Text(
              'Voluntários',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.groups,
              color: Color.fromARGB(255, 245, 2, 2),
            ),
            title: Text(
              'Seja Membro',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Color.fromARGB(255, 245, 2, 2),
            ),
            title: Text(
              'Contribua',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
