import 'package:flutter/material.dart';
import 'package:metodista_app/components/about_us.dart';
import 'package:metodista_app/components/members.dart';
import 'package:metodista_app/components/ministries.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:metodista_app/main.dart';
import 'package:metodista_app/components/contribute.dart';
import 'package:metodista_app/components/ministries.dart';
//import 'package:metodista_app/components/about_us.dart';

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
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/logo-horizontal.png',
              //fit: BoxFit.cover,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => AboutUs(),));
            },
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
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => Ministries(),));
            },
            leading: Icon(
              Icons.people,
              color: Color.fromARGB(255, 245, 2, 2),
            ),
            title: Text(
              'Ministérios',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => Members(),));
            },
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
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => Contribute(),));
            },
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
